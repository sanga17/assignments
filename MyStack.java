import java.util.*;


class Stackarray
{
  int arr[];
  int top, size, len;
  public Stackarray(int n)
  {
    size = n;
    len = 0;
    arr = new int[size];
    top = -1;
    }
 /*  To add an element to the stack */
    public void push(int i)
    {
        if(top + 1 >= size)
            return;/*throw new IndexOutOfBoundsException("the stack overflow");*/
        if(top + 1 < size )
            arr[++top] = i;
        len++ ;
    }
    /*  To delete an element from the stack */
    public int pop()
    {
        if( isEmpty() )
          return Integer.MIN_VALUE;
            /*throw new NoSuchElementException("the stack underflow");*/
        len-- ;
        return arr[top--];
    }
    /* To check if stack is empty */
    public boolean isEmpty()
    {
        return top == -1;
    }
    /* To check if stack is full */
    public boolean isFull()
    {
        return top == size -1 ;
    }
    /* To get the size of the stack */
    public int getSize()
    {
        return len ;
    }
    /*  To check the top element of the stack */
    public int peek()
    {
        if( isEmpty() )
            throw new NoSuchElementException("stack underflow ");
        return arr[top];
    }


    /* To display  the stack */
    public void display()
    {
        /*System.out.print("\nStack  ");*/
        if (len == 0)
        {
            System.out.print("Stack is Empty\n");
            return ;
        }
        for (int i = top; i >= 0; i--)
            System.out.print(arr[i]+" ");
        System.out.println();
    }
     public static void main(String[] args)
    {
        Scanner scan = new Scanner(System.in);
        System.out.println("Stack Test\n");
        System.out.println("Enter Size of Integer Stack ");
        int n = scan.nextInt();
        Stackarray stk = new Stackarray(n);
        char ch;
        do{
            System.out.println("\nStack Operations");
            System.out.println("1. push");
            System.out.println("2. pop");
            System.out.println("3. peek");
            System.out.println("4. check stack is empty or not");
            System.out.println("5. check stack is full or not");
            System.out.println("6. size");
            System.out.println("7. Display ");
            int choice = scan.nextInt();
            switch (choice)
            {
            case 1 :
                System.out.println("Enter integer element to push");
                try
                {
                    stk.push( scan.nextInt() );
                }
                catch (Exception e)
                {
                    System.out.println("Error : " + e.getMessage());
                }
                break;
            case 2 :
                try
                {
                    System.out.println("Popped Element : " + stk.pop());
                }
                catch (Exception e)
                {
                    System.out.println("Error : " + e.getMessage());
                }
                break;
            case 3 :
                try
                {
                    System.out.println("Peek Element : " + stk.peek());
                }
                catch (Exception e)
                {
                    System.out.println("Error : " + e.getMessage());
                }
                break;
            case 4 :
                System.out.println("Empty status : " + stk.isEmpty());
                break;
            case 5 :
                System.out.println("Full status : " + stk.isFull());
                break;
            case 6 :
                System.out.println("Size : " + stk.getSize());
                break;
             case 7 :
             stk.display();
             break;
            default :
                System.out.println("Wrong Entry \n ");
                break;
            }
            /*To display the display stack */

            System.out.println("\nDo you want to continue (Type y or n) \n");
            ch = scan.next().charAt(0);

        } while (ch == 'y');
    }
}