public class Catcher {
    /**
     * Describes what kind of pitch the {@link Pitcher} tossed.
     */
    public static void main(String args[]) {
        Pitcher pitcher = new Pitcher();
        System.out.println("The pitcher threw a " + pitcher.pitch());
    }
}
