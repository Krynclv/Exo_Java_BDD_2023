import java.util.Scanner;

public class exo2 {
   public static void main(String[] args){
      try {
         Scanner sc = new Scanner(System.in);
         System.err.print("Entrez un nombre entier = ");
         int A = sc.nextInt();

         if(A%2 != 0){
            System.err.println("IMPAIR");
         } else {
            System.err.println("PAIR");
         }
         sc.close();
      }
      catch (Exception e) {
         System.err.println("Veuillez entrer un nombre entier");
         main(args);
      }
   }
}