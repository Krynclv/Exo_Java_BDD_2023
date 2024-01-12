import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;


public class exo5 {
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

         int res = list.get(0);
         for (int nombre : list) {
            if (Math.abs(nombre) < Math.abs(res) ||
               (Math.abs(nombre) == Math.abs(res) && nombre > res)) {
            res = nombre;
            }
        }

         System.out.println(res);

         sc.close();
      }
      catch (Exception e) {
         System.err.println(e);
      }
   }
}