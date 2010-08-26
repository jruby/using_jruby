// START:import
package book.embed;

import java.lang.NoSuchMethodException;

import java.util.List;

import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
// END:import

public class Historian8 {
    // START:main
    public static void main(String[] args)
        throws ScriptException, NoSuchMethodException {

        ScriptEngineManager manager = new ScriptEngineManager();
        ScriptEngine engine = manager.getEngineByName("jruby");
        Invocable invocable = (Invocable)engine;

        engine.eval("$LOAD_PATH << 'lib'");
        engine.eval("require 'archive8'");

        Object archive = engine.eval("Archive.new");

        List<GitDiff> diffs = (List<GitDiff>)
            invocable.invokeMethod(archive,
                                   "history",
                                   new Revisions(args[0], args[1]));

        for (GitDiff diff : diffs) {
            System.out.println("FILE: " + diff.getPath());
            System.out.println(diff.getPatch());
        }
    }
    // END:main
}
