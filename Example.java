// IOTarget Example
import java.util.*;

public class Example{

    public static void main(String[] args){
        Scanner input = new Scanner(System.in);
        while(input.hasNextLine()){
            String i = input.nextLine();
            System.out.println(new StringBuilder(i).reverse());
        }
    }

}