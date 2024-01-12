import java.util.Scanner;

public class exo5 {
   public static void main(String[] args){
      try {
         Scanner sc = new Scanner(System.in);
         int x = sc.nextInt();

         for(int i = 1; i <= x; i++){
            for(int j = x-i; j > 0; j--){
               System.err.print(" ");
            }
            for (int k = 1; k<=i; k++){
               System.err.print("* ");
            }
            System.err.println(""); 
         }

         sc.close();

      }
      catch (Exception e) {
         System.err.println(e);
      }
   }
}
