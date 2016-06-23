import java.util.*;
public class Solution {
       
static void partition(int[] ar) {
    int pivot = ar[0];
    String str = "";
    List<Integer> lt = new ArrayList<Integer>(ar.length);
    List<Integer> rt = new ArrayList<Integer>(ar.length);
    for (int i=1;i<ar.length;i++){
        if (ar[i] >= pivot) rt.add(ar[i]);
        if (ar[i] < pivot) lt.add(ar[i]);
    }
    Collections.sort(rt);
    Collections.reverse(lt);
    for(int n: lt){ System.out.print(n+" "); }
    System.out.print(pivot+" ");
    for(int n: rt){ System.out.print(n+" "); }
}   
 
      public static void main(String[] args) {
           Scanner in = new Scanner(System.in);
           int n = in.nextInt();
           int[] ar = new int[n];
           for(int i=0;i<n;i++){
              ar[i]=in.nextInt(); 
           }
           partition(ar);
       }    
   }
