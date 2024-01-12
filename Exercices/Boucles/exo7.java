import java.util.Scanner;

public class exo7 {
   public static void main(String[] args){
      try {
         Scanner sc = new Scanner(System.in);
         int x = sc.nextInt();

         for(int i = 1; i <= x; i++){
            System.err.print(x + "*" + i + " =" ); 
            System.err.print(x*i); 

            System.err.println(""); 
         }
         sc.close();

      }
      catch (Exception e) {
         System.err.println(e);
      }
   }
}
