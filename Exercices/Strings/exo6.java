import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class exo6 {
   public static void main(String[] args){
      try {
         Scanner sc = new Scanner(System.in);

         System.err.print("Entrez une chaine de charactères (6 char minimum)");
         String xd = sc.nextLine().toLowerCase();
         int compteurA = 0;
         int compteurB = 0;
         List<Character> chars = new ArrayList<>();
         chars.add('a');
         chars.add('e');
         chars.add('i');
         chars.add('o');
         chars.add('u');
         chars.add('y');


         for(int i = 0; i < xd.length(); i++) {
             if(chars.contains(xd.charAt(i))) {
                 compteurA++;
             } else {
               compteurB++;
             }
         }
 
         System.out.println("Le nombre de 'voyelles' dans la chaine est: " + compteurA);
         System.out.println("Le nombre de 'consonnes' dans la chaine est: " + compteurB);

         sc.close();
      }
      catch (Exception e) {
         System.err.println(e);
      }
   }
}