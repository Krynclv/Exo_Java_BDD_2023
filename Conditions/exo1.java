import java.util.Scanner;

public class exo1 {
   public static void main(String[] args){
      try {
         Scanner sc = new Scanner(System.in);
         System.err.println("Veuillez entrer 3 valeurs");
         System.err.print("Valeur A = ");
         int A = sc.nextInt();
         System.err.print("Valeur B = ");
         int B = sc.nextInt();
         System.err.print("Valeur C = ");
         int C = sc.nextInt();

         boolean res = false;

         if(C > A){
            if(C < B){
               res = true;
            }
         }

         if(C > B){
            if(C < A){
               res = true;
            }
         }

         if(res){
            System.err.print("OUI");
         } else {
            System.err.print("NON");
         }
         sc.close();

      }
      catch (Exception e) {
         System.err.println("Veuillez entrer un nombre entier");
         main(args);
      }
   }
}