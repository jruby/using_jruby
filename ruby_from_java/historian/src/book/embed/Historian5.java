package book.embed;

import java.util.Arrays;
import java.util.List;
import org.jruby.embed.ScriptingContainer;

public class Historian5 {
    public static void main(String[] args) {
        // START:main
        ScriptingContainer container = new ScriptingContainer();
        container.setLoadPaths(Arrays.asList("lib"));
        container.runScriptlet("require 'archive5'");

        container.put("$revisions", new Revisions(args[0], args[1]));

        List<GitDiff> files = (List<GitDiff>) container.runScriptlet("history");

        for (GitDiff file: files) {
            System.out.println("FILE: " + file.getPath());
            System.out.println(file.getPatch());
        }
        // END:main
    }
}
