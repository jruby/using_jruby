package book.embed;

import java.util.Arrays;
import org.jruby.embed.ScriptingContainer;

public class Historian3 {
    public static void main(String[] args) {
        // START:main
        ScriptingContainer container = new ScriptingContainer();

        container.setLoadPaths(Arrays.asList("lib"));

        String expr = "require 'git'\n" +
                      "Git.open('.').diff('HEAD^', 'HEAD')";

        System.out.println(container.runScriptlet(expr));
        // END:main
    }
}
