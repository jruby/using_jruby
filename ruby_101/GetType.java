public class GetType {
    public static String fredsType() {
        return
            // START:type
            // Java:
            "Fred".getClass().getName(); // => java.lang.String
            // END:type
    }

    public static void main(String[] args) {
        System.out.println(GetType.fredsType());
    }
}
