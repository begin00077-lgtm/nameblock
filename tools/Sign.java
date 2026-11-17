import com.android.apksig.ApkSigner;
import java.io.File;
import java.io.FileInputStream;
import java.security.KeyStore;
import java.security.PrivateKey;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Sign {
    public static void main(String[] a) throws Exception {
        char[] pw = a[0].toCharArray();
        KeyStore ks = KeyStore.getInstance("PKCS12");
        try (FileInputStream in = new FileInputStream(a[1])) {
            ks.load(in, pw);
        }
        String alias = a[2];
        PrivateKey key = (PrivateKey) ks.getKey(alias, pw);
        Certificate[] chain = ks.getCertificateChain(alias);
        List<X509Certificate> certs = new ArrayList<>();
        for (Certificate c : chain) certs.add((X509Certificate) c);
        ApkSigner.SignerConfig cfg =
                new ApkSigner.SignerConfig.Builder("MOD", key, certs).build();
        new ApkSigner.Builder(Arrays.asList(cfg))
                .setInputApk(new File(a[3]))
                .setOutputApk(new File(a[4]))
                .setV1SigningEnabled(false)
                .setV2SigningEnabled(true)
                .setV3SigningEnabled(true)
                .build()
                .sign();
        System.out.println("signed -> " + a[4]);
    }
}
