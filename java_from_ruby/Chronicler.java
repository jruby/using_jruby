import java.lang.annotation.Annotation;

public class Chronicler {
    public static void describe(Class<?> c) {
        PerformedBy p = (PerformedBy)c.getAnnotation(PerformedBy.class);
        System.out.println(p.name() + " performs " + c.getName());
    }
}
