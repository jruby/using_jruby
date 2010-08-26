package book.embed;

import java.util.Arrays;
import java.util.List;
import org.jruby.embed.InvokeFailedException;
import org.jruby.embed.ScriptingContainer;

public class Historian7 {
    public static void main(String[] args) {
        // START:main
        ScriptingContainer container = new ScriptingContainer();
        container.setLoadPaths(Arrays.asList("lib"));
        container.runScriptlet("require 'archive7'");

        Object archive = container.runScriptlet("Archive.new");

        try {
            List<GitDiff> files = (List<GitDiff>)
                container.callMethod(archive,
                                     "history",
                                     new Revisions(args[0], args[1]));

            for (GitDiff file : files) {
                System.out.println("FILE: " + file.getPath());
                System.out.println(file.getPatch());
            }
        } catch (InvokeFailedException e) {
            // doSomethingSensibleWith(e);
            System.out.println("Couldn't generate diff; please see the log file.");
        }
        // END:main
    }
}
