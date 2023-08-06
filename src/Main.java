import java.util.LinkedList;

public class Main {
    public static void main(String[] args) {
        double[] lambda = new double[]{0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9};
        for(double l : lambda) {
            RTP rtp = new RTP(l);
            rtp.modeling();
        }
    }
}
