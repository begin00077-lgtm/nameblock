"""Icon: red tile, big white "禁", slanted 18+ sticker."""

import os
from PIL import Image, ImageDraw, ImageFont

FONT_BOLD = r"C:\Windows\Fonts\msyhbd.ttc"
FALLBACK = r"C:\Windows\Fonts\simhei.ttf"

RED = (230, 57, 70, 255)
DARK_RED = (186, 32, 45, 255)
WHITE = (255, 255, 255, 255)


def font(size):
    path = FONT_BOLD if os.path.exists(FONT_BOLD) else FALLBACK
    try:
        return ImageFont.truetype(path, size, index=0)
    except Exception:
        return ImageFont.truetype(FALLBACK, size)


def composition(canvas, bg=None, radius_frac=0.22):
    C = canvas * 4
    img = Image.new("RGBA", (C, C), (0, 0, 0, 0))
    d = ImageDraw.Draw(img)

    if bg is not None:
        d.rounded_rectangle((0, 0, C, C), radius=int(C * radius_frac), fill=bg)

    # 禁
    f = font(int(C * 0.46))
    d.text((C * 0.50, C * 0.455), "禁", font=f, fill=WHITE, anchor="mm")

    # 18+ sticker, kept inside the 66% safe circle
    sw, sh = int(C * 0.27), int(C * 0.125)
    pad = 40
    sticker = Image.new("RGBA", (sw + pad * 2, sh + pad * 2), (0, 0, 0, 0))
    sd = ImageDraw.Draw(sticker)
    sd.rounded_rectangle((pad, pad, pad + sw, pad + sh), radius=int(sh * 0.34),
                         fill=WHITE, outline=DARK_RED, width=max(4, int(C * 0.012)))
    f2 = font(int(sh * 0.70))
    sd.text((pad + sw / 2, pad + sh / 2 + sh * 0.03), "18+", font=f2, fill=RED, anchor="mm")
    sticker = sticker.rotate(-12, expand=True, resample=Image.BICUBIC)

    cx = int(C * 0.615) - sticker.width // 2
    cy = int(C * 0.625) - sticker.height // 2
    img.alpha_composite(sticker, (cx, cy))

    return img.resize((canvas, canvas), Image.LANCZOS)


def save(img, path):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    img.save(path)


if __name__ == "__main__":
    res = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "res")

    save(composition(1024, bg=RED), os.path.join(res, "icon_preview.png"))

    # adaptive foreground: only the glyph + sticker, the red tile is the background layer
    save(composition(1024, bg=None), os.path.join(res, "drawable", "ic_launcher_foreground.png"))

    for name, px in {"mdpi": 48, "hdpi": 72, "xhdpi": 96, "xxhdpi": 144, "xxxhdpi": 192}.items():
        save(composition(px, bg=RED), os.path.join(res, "mipmap-" + name, "ic_launcher.png"))

    print("icon written to", res)
