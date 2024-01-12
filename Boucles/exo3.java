import java.util.Scanner;

public class exo3 {
   public static void main(String[] args){
      try {
         Scanner sc = new Scanner(System.in);
         int x = sc.nextInt();
         // System.err.println(x);

         for(int i = x; i > 0; i--){
            for(int j = 1; j < i; j++){
               System.err.print("*");
            }
            System.err.println("*");
         }

         sc.close();

      }
      catch (Exception e) {
         System.err.println(e);
      }
   }
}