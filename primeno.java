import java.io.*;
import java.util.*;


class primeno
{

 public static void main(String[] args)
 {
	int row,coloumn,fno;int max=0,maxodd=1,maxsum=0,rem=0,flag=0;
	Scanner scan = new Scanner(System.in);
	System.out.println("Enter the row nos");
	row=scan.nextInt();
	System.out.println("Enter the coloumn nos");
	coloumn=scan.nextInt();
	int arr[][]= new int[coloumn][row];
	int arr1[][]= new int[coloumn][row];
	int c1=2;
	System.out.println("taking values from user\n");
	
	
    
	/*taking array values from user*/
	for (int k=0;k<row;k++)
	{
		for (int l=0;l<coloumn;l++)
		{
           int n = scan.nextInt();
           arr[k][l]=n;
           
		}
	}

	System.out.println("The given array is:\n");
	for (int k=0;k<row;k++)
	{
		for (int l=0;l<coloumn;l++)
		{
           System.out.print("\t"+arr[k][l]);
           
		}
		System.out.println("\n");
	}
	//row wise addition and store in other array
	for(int k=0;k<row;k++)
	{
        for(int l=0;l<coloumn;l++)
        {

        	if(l+1>coloumn-1)
        	{
              fno=arr[k][l]+arr[k][0];
        	}
        	else
        	{
        	  fno=arr[k][l]+arr[k][l+1];
            }
         
             if(c1>row-1)
            {
            	c1=0;
            }
            arr1[k][c1]=fno;
            c1++;
           
            
        
        }
	}
	c1=2;
	//printing of addition of second array 
	System.out.println("The matrix after addition by row wise:\n");
	for (int k=0;k<row;k++)
	{
		for (int l=0;l<coloumn;l++)
		{
           System.out.print("\t"+arr1[k][l]);
           
		}
		System.out.println("\n");
	}
/*coloumn wise addition and storing in previous array*/
	for(int k=0;k<row;k++)
	{
        for(int l=0;l<coloumn;l++)
        {
        	if(l+1>row-1)
        	{
              fno=arr1[l][k]+arr1[0][k];
        	}
        	else
        	{
        	  fno=arr1[l][k]+arr1[l+1][k];
            }
       
            if(c1>2)
            {
            	c1=0;
            }
            arr[c1][k]=fno;
            c1++;
            
        
        }
	}
	//printing after addition in coloumn wise 
	System.out.println("The matrix after addition by coloumn wise:\n");
	for (int k=0;k<row;k++)
	{
		for (int l=0;l<coloumn;l++)
		{
           System.out.print("\t"+arr[k][l]);
           
		}
		System.out.println("\n");
	}

	  int B[]=new int[row*coloumn];
	 
	   //creating a 1D Array of size 'r*c'
            int x = 0;
            for(int i=0;i<row;i++)
            {
                for(int j=0;j<coloumn;j++)
                {
                    B[x] = arr[i][j];
                    x++;
                }
            }
              /*Sorting the 1D Array in Ascending Order*/
            int t=0;
            for(int i=0; i<(row*coloumn)-1; i++)
            {
                for(int j=i+1; j<(row*coloumn)-1; j++)
                {
                    if(B[i]>B[j])
                    {
                        t=B[i];
                        B[i]=B[j];
                        B[j]=t;
                    }
                }
            }
          
            //now finding the largest odd element
            for(int i=(row*coloumn)-1;i>0;i--)
            {
               if(B[i]%2==1 && B[i]!=B[i-1])
               {
                 maxodd=B[i];
                 break;
               }

             }
             System.out.println("\nThe largest unique odd no is:"+maxodd);
             //finding addition of digits 
             while(maxodd!=0)
             {
                 rem=maxodd%10;
                 maxsum=maxsum+rem;
                 maxodd=maxodd/10;
             }
             System.out.println("\nsum of digits of largest odd no is:"+maxsum);

            // checking wheather the no is prime or not
             	for(int i=2;i<maxsum/2;i++)
             	{
             		if(maxsum%i==0)
             		{
             			flag=1;
             		}

             	}
             if(flag==0)
             {
             	System.out.println("\nthe given no is prime no:"+maxsum);
             }
             else
             	{System.out.println("\nThe sum is not prime no:"+maxsum);}

}
	
}