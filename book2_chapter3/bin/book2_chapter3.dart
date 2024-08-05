


// enum Grade { A, B, C, D, F }
// //creating similar classes
//  class Person {
//   Person(this.givenName, this.surname);
//   String givenName;
//   String surname;
//   String get fullName => '$givenName $surname';
//   @override
//   String toString() => fullName;
//  }

// //  class Student {
// // Student(this.givenName, this.surname);
// // String givenName;
// // String surname;
// // var grades = <Grade>[];
// // String get fullName => '$givenName $surname';
// // @override
// // String toString() => fullName;
// // }//we will get a duplication error so we'll change it to the one below

// // class Student extends Person {
// // Student(String givenName, String surname)
// // : super(givenName, surname);
// // var grades = <Grade>[];
// // }




// //Super Parameters
// //Rather than manually forwarding constructor parameters to the superclass, you can use
// // super plus the parameter name directly. Replace your Student class with the following
// // simplified form:

// //Replacing like so;
// class Student extends Person {
// Student(super.givenName, super.surname);
// var grades = <Grade>[];

// //Overriding Parent Methods

// @override
// String get fullName => '$surname, $givenName';

// }

// //Calling Super Last in an Initializer List
// //class SomeChild extends SomeParent {
// // SomeChild(double height, double width, String name)
// // : _width = width, // initializer
// // : _height = height, // initializer
// // super(name); // super
// // final double _width;
// // final double _height;
// // }
// // //


// //Calling Super From an Overridden Method
// void doSomeWork() {
// print('parent working');
// }
// }
// class SomeChild extends SomeParent {
// @override
// void doSomeWork() {
// super.doSomeWork();
// print('child doing some other work');
// }

// //Assuming we wanted the child's method to work first then we override like so
// // @override
// // void doSomeWork() {
// // print('child doing some other work');
// // super.doSomeWork();
// // }

// }
// //Multi‐Level Hierarchy
// //creating another slass that extends from students
// class SchoolBandMember extends Student {
// SchoolBandMember(super.givenName, super.surname);
// static const minimumPracticeTime = 2;
// }

// //Sibling Classes
// class StudentAthlete extends Student {
// StudentAthlete(super.givenName, super.surname);
// bool get isEligible =>
// grades.every((grade) => grade != Grade.F);
// }



// void main(){
//   //instanciating class of person and student
//   final jon = Person('Jon', 'Snow');
// final jane = Student('Jane', 'Snow');
// print(jon.fullName);
// print(jane.fullName);

// //you; can only add grade to student because only student has the grade parameter
// final historyGrade = Grade.B;
// jane.grades.add(historyGrade);

// //calling parent/child class  in main
// final child = SomeChild();
// child.doSomeWork();

// //instantiating the band memebers and athlete class
// final jessie = SchoolBandMember('Jessie', 'Jones');
// final marty = StudentAthlete('Marty', 'McFly');

// //Type Inference in a Mixed List
// final students = [jane, jessie, marty];


// //Checking an Object’s Type at Runtime
// print(jessie is Object);
// print(jessie is Person);
// print(jessie is Student);
// print(jessie is SchoolBandMember);
// print(jessie is! StudentAthlete);


// }

void main(){
Fruit apple=Fruit('red');
apple.describeColor();
 
 Melon watermelon=Watermelon('Green');
 watermelon.describeColor();

 Melon canteloupe= Canteloupe('pink');
 canteloupe.describeColor();

Student somestudent= Student('Joy', 'Okeke', [Role.athletee]);
Student somestudent2= Student('Dart', 'Flutter', [Role.studentunionmember]);
Student somestudent3= Student('Patricia', 'Chigozie', [Role.bandmember]);

print(somestudent);
print(somestudent2);
print(somestudent3);

}
//Challenges
class Fruit{
  String color;
Fruit(this.color);


  //adding a method to describe color
  void describeColor(){
    print('The fruit is $color in colour');
  }
}

//creating a subclass of fruit named melon
class Melon extends Fruit{
  Melon(super.color);
}

// creating two more melon classes
class Watermelon extends Melon{
  Watermelon(super.color);


//overiding the watermelon class
void describeColor(){
  print('Watermelon is $color in color');
}
}

class Canteloupe extends Melon{
  Canteloupe(super.color);
  void describeColor(){
    print('Canteloupe is $color in color');
  }
}  


//Challenge 2

class Person {
Person(this.givenName,this.surname);
String givenName;
String surname;

void describe(){
  print('Name:$givenName, Surname:$surname');

}

  }


//creating a student class that inherits person
 class Student extends Person {

Student(super.givenName, super.surname, this.roles);

List<Role> roles;


    
 }
 
enum Role{athletee,bandmember,studentunionmember}






//creating a student class that extends person

 //enum Grade { A, B, C, D, F }
// //creating similar classes
//  class Person {
//   Person(this.givenName, this.surname);
//   String givenName;
//   String surname;
//   String get fullName => '$givenName $surname';
//   @override
//   String toString() => fullName;
//  }