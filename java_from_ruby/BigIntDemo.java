import java.math.BigInteger;

public class BigIntDemo {
    public static final BigInteger GOOGOL =
        new BigInteger("10").pow(100);

    public static boolean biggerThanGoogol(BigInteger i) {
        return (GOOGOL.compareTo(i) < 0);
    }
}
