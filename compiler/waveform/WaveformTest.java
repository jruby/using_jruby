public class WaveformTest {
    public static void main(String[] args) {
        double[] triangleWave = {0.0, 1.0, 0.0, -1.0, 0.0};
        Waveform w = new Waveform(triangleWave);
        System.out.println(w.rms());
    }
}
