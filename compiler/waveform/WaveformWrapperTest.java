public class WaveformWrapperTest {
    public static void main(String[] args) {
        double[] triangleWave = {0.0, 1.0, 0.0, -1.0, 0.0};
        WaveformWrapper w = new WaveformWrapper(triangleWave);
        System.out.println(w.rms());
    }
}
