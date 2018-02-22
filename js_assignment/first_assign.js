//1. Write a function for calculating percentage of 4 subjects.
marks =[50,60,70,80];
var add =0;
var percentage;
for(i=0;i<marks.length;i++)
{
  add += marks[i];
}

percentage =add/marks.length;
console.log('percentage is:'+percentage);
//percentage is:65

//2. Write a function which - make a Simple Calculator to Add, Subtract, Multiply or Divide    Using switch...case

function calculator(operation,num1,num2)
{
  switch (operation)
  {
  case 1:
    result=num1+num2;
    console.log("the addition is:"+result);
    break;
  case 2:
    result=num1-num2;
    console.log("the subtraction is:"+result);
    break;
  case 3:
    result=num1*num2;
    console.log("the multiplication is:"+result);
    break;
  case 4:
    result=num1/num2;
    console.log("the dividation is:"+result);
    break;
  default:
    console.log("please enter correct option");
    break;
    }
}
  //calculator(1,30,20);
  //the addition is:50
  //calculator(2,30,20);
  //the subtraction is:10
  //calculator(3,30,20);
  //the multiplication is:600
  //calculator(4,30,20);
  //the dividation is:1.5
  // calculator(5,30,20);
  //please enter correct option

  //3. Write a function which generates Multiplication Table of a number.

  function multiplication(number)
  {
    console.log("the multiplication table of :"+number);
    for(i=1;i<11;i++)
    {
      console.log(number*i);
    }
  }
  multiplication(3);
/* the multiplication table of :3
  3
  6
  9
  12
  15
  18
  21
  24
  27
  30 */

//4. Write a function for finding number of Digits in a Number

function digits(number)
{
  count=0;
  while(number >1)
  {
    number =number/10;
    count++;
  }
  console.log("The no of digits of given no is:" +count);
}
digits(149);

//The no of digits of given no is:3

//5. Write a function to calculate average of integer array.

function average(avg_array)
{
  result=0;
  for(i=0;i<avg_array.length;i++)
  {
    result += avg_array[i];
  }
  console.log("the average of given array is:" +(result/avg_array.length));
}
array=[10,20,30,40];
average(array);

//the average of given array is:25

//6. Write a function to find largest number in an integer array.

function largest(array)
{
  largest_no=0;
  for(i=0;i<((array.length)-1);i++)
  {
    if(largest_no<array[i])
    {
      largest_no=array[i];
    }
  }
  console.log("The largest element in array is: "+largest_no);
}
array=[70,20,30,40];
largest(array);

//The largest element in array is: 70

//7. Write a function to add elements of two arrays
function addition_array(array1,array2)
{

  for(i=0;i<array1.length;i++)
  {
    array1[i]=array1[i]+array2[i];
  }
  console.log("the addition of two array is:"+array1);
}
array1=[10,20,30,40];
array2=[40,30,20,10];
addition_array(array1,array2);

//the addition of two array is:50,50,50,50

//8. Write a function to reverse array elements.

function reverse_array(array)
{
  for(i=0,last=(array.length-1);i<(array.length/2);i++,last--)
  {
    temp=array[i];
    array[i]=array[last];
    array[last]=temp;
  }
  console.log("the reverse array is: "+array);
}
array=[10,20,30,40];
reverse_array(array);

//the reverse array is: 40,30,20,10


function sayHello(array) {
  console.log(this.sayHello(array));
}

var context = {
    sayHello(result) {
        return 'Hello '+result+'.';
    }
}
  firstName = 'Alex',
  secondName = 'Perry';
sayHello.apply(context,[firstName,secondName]);