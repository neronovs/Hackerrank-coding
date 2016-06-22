import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int arr[][] = new int[6][6];
        for(int i=0; i < 6; i++){
            for(int j=0; j < 6; j++){
                arr[i][j] = in.nextInt();
            }
        }
        int count = 0;
        int[] res = new int[16];
        for (int y=0;y<4;y++)
            for (int x=0;x<4;x++){
                res[count] = check(arr,x,y);
                count++;
        }
        Arrays.sort(res);
        System.out.print(res[15]);
    }

    private static int check(int arr[][], int x, int y) {
        int sum = 0;
        for (int i=0;i<3;i++) sum += arr[y][x+i];
        for (int i=0;i<3;i++) sum += arr[y+2][x+i];
        sum += arr[y+1][x+1];
        return sum;
    }
}
