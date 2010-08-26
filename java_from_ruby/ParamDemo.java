import java.util.List;

public class ParamDemo {
    public static String hello(String name) {
        return "hello, " + name;
    }

    public static boolean hasEvenSize(List l) {
        return (l.size() % 2 == 0);
    }
}
