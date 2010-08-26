import org.jruby.embed.ScriptingContainer;

public class Launcher {
    public static void main(String[] args) {
        ScriptingContainer container = new ScriptingContainer();
        container.runScriptlet("require 'scrape'");
    }
}
