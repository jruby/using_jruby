public class VariableArgsDemo {
    public static String longestString(String... items) {
        int longLength = -1;
        String longest = null;
        for (String str : items) {
            if (str.length() > longLength) {
                longLength = str.length();
                longest = str;
            }
        }
        return longest;
    }
}
