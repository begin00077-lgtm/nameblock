"""从 smali 里提取类的 public 成员签名，生成 javac 用的桩文件。

仅用于编译期：让 18 个手写 Java 类能通过类型检查。打包时桩会被丢弃，
以 smali 汇编出的真实实现为准。
"""
import os
import re
import sys

PROJ = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SRC = os.path.join(PROJ, 'src', 'com', 'dsh', 'nameblock')

CLASS_MAP = {
    'Landroid/content/Context;': 'android.content.Context',
    'Landroid/app/Activity;': 'android.app.Activity',
    'Landroid/content/Intent;': 'android.content.Intent',
    'Landroid/view/View;': 'android.view.View',
    'Ljava/lang/String;': 'String',
    'Ljava/lang/Object;': 'Object',
    'Ljava/lang/CharSequence;': 'CharSequence',
    'Ljava/io/File;': 'java.io.File',
    'Ljava/util/List;': 'java.util.List',
    'Ljava/util/Set;': 'java.util.Set',
    'Ljava/util/Map;': 'java.util.Map',
}

PRIM = {'V': 'void', 'Z': 'boolean', 'I': 'int', 'J': 'long', 'F': 'float',
        'D': 'double', 'B': 'byte', 'S': 'short', 'C': 'char'}


def parse_type(s, i):
    """从 s[i] 起解析一个类型描述符，返回 (java 类型, 新位置)。"""
    dims = 0
    while s[i] == '[':
        dims += 1
        i += 1
    c = s[i]
    if c in PRIM:
        t = PRIM[c]
        i += 1
    elif c == 'L':
        j = s.index(';', i)
        desc = s[i:j + 1]
        name = desc[1:-1].replace('/', '.')
        simple = name.split('.')[-1]
        pkg = name.rsplit('.', 1)[0] if '.' in name else ''
        if pkg == 'com.dsh.nameblock':
            t = simple
        else:
            t = CLASS_MAP.get(desc, name)
        i = j + 1
    else:
        raise ValueError('bad type at %d: %s' % (i, s[i:i + 20]))
    return (t + '[]' * dims), i


def parse_params(desc):
    """返回参数类型列表。"""
    i = 1  # 跳过 '('
    out = []
    while desc[i] != ')':
        t, i = parse_type(desc, i)
        out.append(t)
    return out


def parse_ret(desc):
    i = desc.index(')') + 1
    t, _ = parse_type(desc, i)
    return t


def jtype(desc):
    """把单个字段类型描述符转成 Java 类型名。"""
    if desc in PRIM:
        return PRIM[desc]
    if desc.startswith('['):
        t, _ = parse_type(desc, 0)
        return t
    if desc.startswith('L'):
        return CLASS_MAP.get(desc, desc[1:-1].replace('/', '.'))
    return 'Object'


# 目标类是这些手写 Java 代码实际用到的返回类型，桩里必须带上泛型，
# 否则 for (String k : store.keywords()) / Set<String> white = ... 编译不过。
GENERIC_RET = {
    'keywords': 'java.util.List<String>',
    'numbers': 'java.util.List<String[]>',
    'logs': 'java.util.List<String[]>',
    'whitelist': 'java.util.Set<String>',
    'allowed': 'java.util.Set<String>',
}


def parse_smali(path):
    """返回 (类名, 父类, 字段列表[(类型,名字)], 方法列表[(名,参数,返回,是否静态)])"""
    with open(path, encoding='utf-8') as f:
        lines = f.read().split('\n')

    cls = None
    sup = None
    fields = []
    methods = []
    for idx, line in enumerate(lines):
        s = line.strip()
        if s.startswith('.class'):
            m = re.search(r'(L[\w/$]+;)\s*$', s)
            if m:
                cls = m.group(1)[1:-1].replace('/', '.')
        elif s.startswith('.super'):
            m = re.search(r'(L[\w/$]+;)', s)
            if m:
                sup = m.group(1)[1:-1].replace('/', '.')
        elif s.startswith('.field'):
            # .field public static volatile NAME:TYPE   或   .field NAME:TYPE = value
            m = re.search(r'([A-Za-z_$][\w$]*)\s*:\s*(\S+?)(?:\s*=|$)', s)
            if m:
                name, desc = m.group(1), m.group(2)
                is_static = 'static' in s
                try:
                    t = jtype(desc)
                    fields.append((t, name, is_static))
                except Exception:
                    pass
        elif s.startswith('.method'):
            # .method public declared-synchronized name(PARAMS)RET
            m = re.search(r'(\S+)\((.*?)\)(\S+)$', s)
            if m:
                name = m.group(1)
                desc = '(' + m.group(2) + ')' + m.group(3)
                try:
                    params = parse_params(desc)
                    ret = parse_ret(desc)
                    methods.append((name, params, ret, 'static' in s))
                except Exception:
                    pass
    return cls, sup, fields, methods


def java_name(n):
    return n


def gen_stub(cls, sup, fields, methods):
    pkg = cls.rsplit('.', 1)[0]
    simple = cls.rsplit('.', 1)[1]
    if sup in (None, 'Object', 'java.lang.Object'):
        sup = None
    out = ['package %s;' % pkg, '',
           '@SuppressWarnings("unused")',
           'public class %s%s {' % (simple, (' extends ' + sup) if sup else '')]

    # 静态字段：常量给默认值；可变静态字段（如 NameGuardService.connected）也要能读。
    for t, n, is_static in fields:
        if not is_static:
            continue
        default = {'int': '0', 'long': '0L', 'String': 'null', 'boolean': 'false', 'float': '0f'}.get(t)
        if default is not None:
            out.append('    public static %s %s = %s;' % (t, n, default))

    # 方法桩
    for name, params, ret, is_static in methods:
        if name in ('<init>', '<clinit>'):
            continue
        # R8/desugar 合成方法（$r8$lambda$…、lambda$…、-$$Nest$…）不是合法 Java 标识符，
        # 而且它们只由真实实现内部使用，桩里不需要。
        if '$' in name or not re.match(r'^[A-Za-z_][A-Za-z0-9_]*$', name):
            continue
        ret_decl = GENERIC_RET.get(name, ret) if not is_static else ret
        args = ', '.join('%s a%d' % (t, i) for i, t in enumerate(params))
        mod = 'public static' if is_static else 'public'
        # 泛型返回只用于类型检查，桩体照常返回 null / 默认值
        base_ret = ret
        if base_ret == 'void':
            body = '{ }'
        elif base_ret in ('int', 'long', 'boolean', 'float', 'double', 'byte', 'short', 'char'):
            body = '{ return %s; }' % {'int': '0', 'long': '0L', 'boolean': 'false',
                                        'float': '0f', 'double': '0d', 'byte': '0',
                                        'short': '0', 'char': '0'}[base_ret]
        else:
            body = '{ return null; }'
        out.append('    %s %s %s(%s) %s' % (mod, ret_decl, name, args, body))
    out.append('}')
    return '\n'.join(out)


def main():
    targets = sys.argv[1:] or ['MainActivity', 'NameGuardService', 'Store']
    outdir = os.path.join(PROJ, 'build', 'gen_stub', 'com', 'dsh', 'nameblock')
    os.makedirs(outdir, exist_ok=True)
    for name in targets:
        p = os.path.join(SRC, name + '.smali')
        if not os.path.exists(p):
            print('missing', p)
            continue
        cls, sup, fields, methods = parse_smali(p)
        stub = gen_stub(cls, sup, fields, methods)
        dst = os.path.join(outdir, name + '.java')
        with open(dst, 'w', encoding='utf-8') as f:
            f.write(stub)
        print('wrote', dst, len(methods), 'methods', len(fields), 'fields')


if __name__ == '__main__':
    main()
