package misrc;


public class Metodos {
    
    public static int obtenerBinarioFromDecimal(int n) {
        int c,r;
        String binario = "";
        
        while(true) {
            c = n / 2;
            r = n % 2;
            binario = r + binario;
            //binario = binario + r;
            if(n<2) {
               break;
            }
            n = c;
        }
        return Integer.parseInt(binario);
    }
    
   

 
    
}
