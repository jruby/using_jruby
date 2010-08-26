public class WaveformCompleteTest {
    public static void main(String[] args) {
        double[] triangleWave = {0.0, 1.0, 0.0, -1.0, 0.0};
        WaveformComplete w = new WaveformComplete(triangleWave);
        System.out.println(w.rms());
    }
}
