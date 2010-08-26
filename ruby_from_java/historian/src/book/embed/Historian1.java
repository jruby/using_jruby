// START:import
package book.embed;

import java.util.Arrays;
import java.util.List;
import org.jruby.embed.InvokeFailedException;
import org.jruby.embed.ScriptingContainer;
// END:import

// START:main
public class Historian1 {
    public static void main(String[] args) {
        ScriptingContainer container = new ScriptingContainer();

        container.runScriptlet("puts 'TODO: Make history here.'");
    }
}
// END:main
