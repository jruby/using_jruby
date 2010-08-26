package rake;

import java.io.PrintWriter;

public class Greeter {
    private final String message;
    private final PrintWriter console = System.out;

    public Greeter() {
        message = "there";
    }

    public Greeter(String msg) {
        message = msg;
    }

    public void setConsole(PrintWriter writer) {
        console = writer;
    }

    public void sayHello() {
        console.println("Hello " + message + "!");
    }

    public static void main(String[] args) {
        Greeter greeter;
        if (args.length > 0) {
            greeter = new Greeter(args[0]);
        } else {
            greeter = new Greeter();
        }
        greeter.sayHello();
    }
}
