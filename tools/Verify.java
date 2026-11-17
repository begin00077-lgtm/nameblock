import com.android.apksig.ApkVerifier;
import java.io.File;

public class Verify {
    public static void main(String[] args) throws Exception {
        ApkVerifier.Builder b = new ApkVerifier.Builder(new File(args[0]));
        if (args.length > 1) b.setMinCheckedPlatformVersion(Integer.parseInt(args[1]));
        ApkVerifier.Result r = b.build().verify();
        System.out.println("verified=" + r.isVerified());
        System.out.println("v1=" + r.isVerifiedUsingV1Scheme()
                + " v2=" + r.isVerifiedUsingV2Scheme()
                + " v3=" + r.isVerifiedUsingV3Scheme());
        System.out.println("signers=" + r.getSigners().size()
                + " v2signers=" + r.getSignersV2().size()
                + " v3signers=" + r.getSignersV3().size());
        System.out.println("errors=" + r.getErrors().size() + " warnings=" + r.getWarnings().size());
        for (ApkVerifier.IssueWithParams e : r.getErrors()) System.out.println("ERR: " + e);
        for (ApkVerifier.IssueWithParams w : r.getWarnings()) System.out.println("WARN: " + w);
    }
}
