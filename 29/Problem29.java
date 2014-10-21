import java.util.Set;
import java.util.LinkedHashSet; //We're going to be using sets to get uniqueness of powers
import java.util.ArrayList; //Assuming zero knowledge about the problem, we don't know how long we want our array to be, so let's just make it easy.
import java.math.BigInteger; //Powers by definition grow exponentially and 100^100 absolutely does not fit in a long, so we need something bigger.

public class Problem29 {
    
    public static void main(String[] args) {
        
        ArrayList<BigInteger> solutionArray = new ArrayList<BigInteger>();
        
        for (int n = 2; n < 101; n++) {
            
            for (int m = 2; m < 101; m++) {
                
                solutionArray.add(new BigInteger(n + "" ).pow(m)); //Generate our power, store it.
                
            }
            
        }
        
        Set<BigInteger> uniqueSolutionSet = new LinkedHashSet<BigInteger>(); //We need a set to take our array and make its elements unique. Sets have unique elements by definition.
        
        uniqueSolutionSet.addAll(solutionArray); //Input the elements of our array into our set.
        
        System.out.println(uniqueSolutionSet.size()); //Our set has unique elements, so just print how many elements are in the set. Solution: 9183
        
    }
    
}