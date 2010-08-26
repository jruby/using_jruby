public class WaveformNaiveTest {
    public static void main(String[] args) {
        double[] triangleWave = {0.0, 1.0, 0.0, -1.0, 0.0};
        waveform w = new waveform(triangleWave);
        System.out.println(w.rms());
    }
}
