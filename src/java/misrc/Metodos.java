package misrc;

public class Metodos {

    public static int obtenerBinarioFromDecimal(int n) {
        int c, r;
        String binario = "";

        while (true) {
            c = n / 2;
            r = n % 2;
            binario = r + binario;
            //binario = binario + r;
            if (n < 2) {
                break;
            }
            n = c;
        }
        return Integer.parseInt(binario);
    }
    
    public static int obtenerDecimalFromBinario1(int binario) {
        String binario_str = String.valueOf(binario);
        int longitud = binario_str.length();
        int n = longitud -1;
        int decimal = 0;
        for(int i=0,j=n; i < longitud; i++,j--) {
            int t = Integer.parseInt(binario_str.charAt(i)+"")* ((int) Math.pow(2, j));
            decimal = decimal + t;  
        }
        return decimal;
    }

    //STEVEN
    public static int obtenerDecimalFromBinario(int bi) {
        String binario = String.valueOf(bi);
        int n = binario.length() - 1;
        int decimal = 0;
        for (int i = 0; i < binario.length(); i++) {
            int d = Character.getNumericValue(binario.charAt(i)) * ((int) Math.pow(2, n));
            decimal = decimal + d;
            n--;
        }
        return decimal;
   }

}
