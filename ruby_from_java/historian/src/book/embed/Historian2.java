package book.embed;

import java.util.Arrays;
import org.jruby.embed.ScriptingContainer;

public class Historian2 {
    public static void main(String[] args) {
        // START:main
        ScriptingContainer container = new ScriptingContainer();

        container.setLoadPaths(Arrays.asList("lib"));

        String expr = "require 'git'\n" +
                      "puts Git.open('.').diff('HEAD^', 'HEAD')";

        container.runScriptlet(expr);
        // END:main
    }
}
