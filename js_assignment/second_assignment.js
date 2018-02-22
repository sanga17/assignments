// A]
// 1. Create a function which takes name, age and 3 subject marks and adds to students array
students = [];
function createStudent(name,age,marks) {
  var student1 = {
    name: name1,
    age: age1,
    marks : marks1
  }
  students.push(student1);
}
createStudent('Shubham',24,[70,60,50]);

// {name: "Anubhav", age: 22, marks: Array(3)}
// {name: "Rohit", age: 18, marks: Array(3)}
// {name: "Sameer", age: 24, marks: Array(3)}
// {name: "Shubham", age: 24, marks: Array(3)}

//2. Write a function which searches a student with name and prints his age if present.

function SearchStudent(name) {
  var present=false;
  for(var i=0;i<students.length;i++)
  {
    student=students[i];
    if(student.name == name)
    {
      present=true;
      console.log('The age of '+student.name+' is : '+student.age);
      break;
    }
  }
  if(! present)
  {
    console.log("This student is not present");
  }
}
SearchStudent('Rohit');
SearchStudent('sanga');

//The age of Rohit is : 18
//This student is not present

//3. Write a function which prints name and his percentage.
function studentPercentage() {
  for(var i=0;i<students.length;i++)
  {
    var addition=0;
    student=students[i];
    name = student.name;
    for(var j=0;j<student.marks.length;j++)
    {
      addition += student.marks[j];
    }
    var percentage = (addition/student.marks.length);
    console.log("the percentage of "+student.name+" is: "+percentage+"%");
  }
}
studentPercentage();

// the percentage of Anubhav is: 71%
// the percentage of Rohit is: 72.66666666666667%
// the percentage of Sameer is: 74.33333333333333%

//B] Implement inheritance for Animal, Dog, Human

function Animal(name,food)
{
  this.name = name;
  this.food = food;
}

function Human(name,food) {
  Animal.call(this,name,food),
  this.walks = "on two legs";
}

Human.prototype = Object.create(Animal.prototype);
Human.prototype.constructor = Human;

function Dog(name,food) {
  Animal.call(this,name,food);
  this.walks = "on four legs";
}
Dog.prototype = Object.create(Animal.prototype);
Dog.prototype.constructor = Dog;

var human = new Human('Shubham','nonveg');
console.log(human);
var dog = new Dog('Tommy','veg');
console.log(dog);

// Human {name: "Shubham", food: "nonveg", walks: "on two legs"}
// Dog {name: "Tommy", food: "veg", walks: "on four legs"}

// C] Similarly Create a shopping cart with javascript objects and functions.

shopping_cart=[];
function Product(name,discription,price) {
  this.name = name;
  this.discription = discription;
  this.price = price;
}

function totalPrice() {
  total_price=0;
  for(var i=0;i<shopping_cart.length;i++)
  {
    product = shopping_cart[i];
    total_price += product.price;
  }
  console.log("The total price of shopping cart is: "+total_price+" .")
}

function afterDiscount(discount) {
  for(var i=0;i<shopping_cart.length;i++)
  {
    discounted_price = ((100 - discount)/100)*(shopping_cart[i].price);
    shopping_cart[i].price = discounted_price;
  }
}

shopping_cart.push(new Product('coffee','coffee causes cancer',50));
shopping_cart.push(new Product('biscuit','it contains maida',20));
shopping_cart.push(new Product('tea','it generates more heat in your body',30));
shopping_cart.push(new Product('water','it is primary need',40));
totalPrice();
afterDiscount(10);


//The total price of shopping cart is: 140 .

Product {name: "coffee", discription: "coffee causes cancer",price: 45}
Product {name: "biscuit", discription: "it contains maida",price: 18}
Product {name: "tea", discription: "it generates more heat in your body",price: 27}
Product {name: "water", discription: "it is primary need",price: 36}