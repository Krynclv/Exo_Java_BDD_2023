import java.util.Scanner;

public class exo4 {
   public static void main(String[] args){
      try {
         Scanner sc = new Scanner(System.in);
         int x = sc.nextInt();

         for(int i = x; i > 0; i--){
            for(int j = 1; j < i; j++){
               System.err.print(" ");
            }
            for (int k = i; k<=x; k++){
               System.err.print("*");
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