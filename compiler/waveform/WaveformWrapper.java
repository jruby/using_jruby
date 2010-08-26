import org.jruby.embed.ScriptingContainer;

public class WaveformWrapper {
    static ScriptingContainer rubyContainer;
    Object waveform;

    static {
        rubyContainer = new ScriptingContainer();
        rubyContainer.runScriptlet("require 'waveform'");
    }

    public WaveformWrapper(double[] points) {
        Object waveformClass = rubyContainer.runScriptlet("Waveform");
        waveform = rubyContainer.callMethod(waveformClass, "new", points);
    }

    public double rms() {
        return (Double)rubyContainer.callMethod(waveform, "rms");
    }
}
