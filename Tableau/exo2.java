import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class exo2 {
   public static void main(String[] args){
      try {
         Scanner sc = new Scanner(System.in);

         System.err.println("Saisir au minimum 3 chiffres à la suite, exemple : (6 78 15)");
         int A = sc.nextInt();
         int B = sc.nextInt();
         int C = sc.nextInt();
         List<Integer> list = new ArrayList<Integer>();
         list.add(A);
         list.add(B);
         list.add(C);

         System.out.println(list.get(0) + list.get(1));

         sc.close();
      }
      catch (Exception e) {
         System.err.println(e);
      }
   }
}