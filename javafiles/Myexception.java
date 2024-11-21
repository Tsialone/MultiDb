package exception;

import java.util.ArrayList;
import java.util.List;

public class Myexception extends Exception {
   public static List<Exception> exceptions = new ArrayList<>();
    String cause;
   public  Myexception (String cause)
    {
        super(cause);
    }
    public void setCause(String cause) {
        this.cause = cause;
    }
}