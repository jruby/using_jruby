public class Conditional {
    private int getNumberFromSomewhere() {
        return 2;
    }

    public void printGroupName() {
        // START:conditional
        // Java:
        String result = "";

        switch (getNumberFromSomewhere()) {
        case 2:  result = "twins";       break;
        case 3:  result = "triplets";    break;
        case 4:  result = "quadruplets"; break;
        default: result = "unknown";     break;
        }

        System.out.println(result);
        // END:conditional
    }
}