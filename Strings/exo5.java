import java.util.Scanner;

public class exo5 {
   public static void main(String[] args){
      try {
         Scanner sc = new Scanner(System.in);

         System.err.print("Entrez une chaine de charactères (6 char minimum)");
         String xd = sc.nextLine();
         if(xd.length() > 6){
            for(int i = xd.length() -1; i >= 0; i--) {
               System.out.print(xd.charAt(i));
            }
         } else {
            System.err.print("Trop peu de characètres (6 min)");
         }
         sc.close();
      }
      catch (Exception e) {
         System.err.println(e);
      }
   }
}