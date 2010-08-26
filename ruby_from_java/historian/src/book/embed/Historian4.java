package book.embed;

import java.util.Arrays;
import org.jruby.embed.ScriptingContainer;

public class Historian4 {
    public static void main(String[] args) {
        // START:main
        ScriptingContainer container = new ScriptingContainer();
        container.setLoadPaths(Arrays.asList("lib"));
        container.runScriptlet("require 'archive4'");

        container.put("$revisions", new Revisions(args[0], args[1]));
        System.out.println(container.runScriptlet("history"));
        // END:main
    }
}
