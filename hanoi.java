 import java.util.*;
  import static java.lang.Math.*;
 class TowersOfHanoiImpl {

  static void tohIterative(int num_of_disks,Stackarray src,Stackarray aux,Stackarray dest)
{
    int i, total_num_of_moves;
    total_num_of_moves = (int) Math.pow(2, num_of_disks)-1;

    //Larger disks will be pushed first
    /*for (i = num_of_disks; i >= 1; i--)
        push(src, i);*/

    for (i = 1; i <= total_num_of_moves; i++)
    {
        /*System.out.println("coming in this loop");*/
        if (i % 3 == 1)
          moveDisksBetweenTwoPoles(src, dest);

        else if (i % 3 == 2)
          moveDisksBetweenTwoPoles(src, aux);

        else if (i % 3 == 0)
          moveDisksBetweenTwoPoles(aux,dest);
    /*  src.display();
   aux.display();
   dest.display();*/
    }
}
static void moveDisksBetweenTwoPoles(Stackarray src,Stackarray dest){
     int pole1TopDisk = src.pop();
        int pole2TopDisk = dest.pop();

        // When pole 1 is empty
        if (pole1TopDisk == Integer.MIN_VALUE)
        {
            src.push(pole2TopDisk);

        }
        // When pole2 pole is empty
        else if (pole2TopDisk == Integer.MIN_VALUE)
        {
            dest.push(pole1TopDisk);
        }
        // When top disk of pole1 > top disk of pole2
        else if (pole1TopDisk > pole2TopDisk)
        {
            src.push(pole1TopDisk);
            src.push(pole2TopDisk);
        }
        // When top disk of pole1 < top disk of pole2
        else
        {
            dest.push(pole2TopDisk);
            dest.push(pole1TopDisk);
        }


}
 public static void main(String[] args){
  Scanner scan = new Scanner(System.in);
  System.out.println("enter no of disks\n");
  int disk=scan.nextInt();
  Stackarray src,aux,dest;

    // Create three stacks of size 'num_of_disks'
    // to hold the disks
    src =new Stackarray(disk);
    aux =new Stackarray(disk);
    dest =new Stackarray(disk);
    for (int i = disk; i >0; i--){
        src.push(i);
    }
    System.out.println("\n\n\t\t::Before switching::");
    System.out.println("The source stack is:");
    src.display();
    System.out.println("\nthe Destination stack is:");
    dest.display();
    tohIterative(disk, src, aux, dest);
    System.out.println("\n\n\t\t::After switching::");
    System.out.println("the Source stack is:");
    src.display();
    if(disk%2==0){
        System.out.println("\nthe Destination stack is:");
       aux.display();
    }
    else{
    System.out.println("\nthe Destination stack is:");
    dest.display();
}
}

}

