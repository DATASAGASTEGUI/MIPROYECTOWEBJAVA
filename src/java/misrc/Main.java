package misrc;

public class Main {

    public static void main(String[] args) {
       try {
            double x = 7/0;
            System.out.print(x);
       }catch(ArithmeticException e) {
           System.out.println("Error: " + e);
       }
    }

}
