  import java.util.Scanner;

  public class exo1 {
     public static void main(String[] args){
        try {
           Scanner sc = new Scanner(System.in);
           int x = sc.nextInt();
           System.err.println(x);

           for(int i = 1; i < x; i++){
              for(int j = 1; j < x; j++){
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