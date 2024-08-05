








// void main() {


// //Exercise 1
// const age1=42;
// const age2=21;
// //Exercise 2
// double averageAge=((age1+age2)/2);

// //The result is a double to avoid loss of precision from the division operation.

// //Challenge 1
// const attendanceScore=90;
// const homeworkScore=80;
// const examScore=94;

// double attendancePercent=((20/100));
// print(attendancePercent);
// double homeworkPercent=((30/100));
// print(homeworkPercent);
// double examPercent=((50/100));
// print (examPercent);

// final attendance=((attendanceScore*attendancePercent));
// print(attendance);
// final homework=((homeworkScore*homeworkPercent));
// print(homework);
// final exam=((examScore*examPercent));
// print(exam);
// //Getting the total grade
// double totalGrade=((attendance+homework+exam));
// print(totalGrade);
// //converting total grade to integer
// print (totalGrade.toInt());

// //challenge 2
// const value=10/2;
// print(value);
// //The value is a Double

// //Chapter 4
// const dart ='😂';
// print('This is a smiling emoji,$dart');


//  //concantenation
//  var message ='Hello' +' my name is ';
//  const name=  'Joy';
//  message+=name;
//  print(message);

//  //Exercise
//  const firstname=' Joy ';
//  const lastname=' Okeke ';
 
//  //Exercise 2
//  const fullname=(firstname + lastname);

//  //Exercise 3
//  const Details='Hello, my name is $fullname';
//  print(Details);

//  const bigString = '''
// You can have a string
// that contains multiple
// lines
// by
// doing this.''';
// print(bigString);

// //Challenges 1
// const twocountries = '🇹🇩🇷🇴';

// print(twocountries.runes);

// //challenge 2
// const vote = 'Thumbs up! ';
// print(vote.codeUnits.length);
// print(vote.runes.length);
// print(vote.characters.length);

// //challenge 3
// var names ='Ray';
// names+=' Wenderlich ';
// print(names);

// //challenge 4
// const number=10;
// const multiplier=5;
// final summary=' $number \u00D7 $multiplier=${number * multiplier}';
// print(summary);

// //Chapter 5
// //Bool is a datatype that tells you whether an operation is true or false

// const doesOneEqualTwo=(1==2);
// print(doesOneEqualTwo);

// //Testing inequality
// const doesonenotequalTwo=(1 != 2);
// print(doesonenotequalTwo);

// const alsoTrue=!(1==2);
// print(alsoTrue);

// //Testing greater than or less than
// const isonegreaterthantwo=(1>2);
// const isonelessthantwo=(1<2);

// print(isonegreaterthantwo);
// print(isonelessthantwo);

// print(1<=2);
// print(2>=2);

// print(2>=1);
// print(2>=2);

// //Conditional operator (&&)
// const issunny=true;
// const isfinished=true;
// const willgocycling=issunny && isfinished;
// print(willgocycling);

// //Booleon or operator(||)
// const willtraveltoAustralia=true;
// const canfindphoto=false;
// const candrawpalypus=willtraveltoAustralia || canfindphoto;
// print(candrawpalypus);

// //Exercise 1
// const myage=25;
// const isTeenager=myage>=13 && myage<=19;
// print(isTeenager);

// //Exercise 2
// const maryage=30;
// const bothteenagers=(maryage>= 13 && maryage<=19) && isTeenager;
// print(bothteenagers);

// //Exercise 3
// const reader=' Joy ';
// const ray=' Ray Wenderlich ';
// const rayisReader=reader==ray;
// print('rayisReader');

// //Assignment chapter 5
// //Exercise 1
// const myAge=30;
// if (myAge>=13 && myAge<=19) {
//   print ('Teenager');
// }
// else;{
//   print('notTeenager');
// }

// // //Exercise 2
// // const myAge1=30;
// // var answer=(myAge1>=13 && myAge1<=19)? 'Teenager': 'notTeenager';
// // print(answer);

// // teenary condition operator
// const answer=(isTeenager)? 'teenager' : 'notTeenager';
// print(answer);

// //Switch statement
// // switch (variable) {
// // case value1:
// // // code
// // break;
// // case value2:
// // // code
// // break;
// // ...
// // default:
// // code

// // //Switchingon strings
// // const weather = 'cloudy';
// // switch (weather) {
// // case 'sunny':
// // print('Put on sunscreen.');
// // break;
// // case 'snowy':
// // print('Get your skis.');
// // break;
// // case 'cloudy':
// // case 'rainy':
// // print('Bring an umbrella.');
// // break;
// // default:
// // print("I'm not familiar with that weather.");
// // }


// //Challenge 1
// const firstName = 'Bob';
// var lastName = "";
// if (firstName == 'Bob') {
//  lastName = 'Smith';
// } else if (firstName == 'Ray') {
//  lastName = 'Wenderlich';
// }
// final fullName = firstName + ' ' + lastName;
// print(fullName);

// //Challenge 2
// const sample1= true && true;
// const sample2 = false || false;
// const sample3 = (true && 1 != 2) || (4 > 3 && 100 < 1);
// const sample4 = ((10 / 2) > 3) && ((10 % 2) == 0);
// print(sample1);
// print(sample2);
// print(sample3);
// print(sample4);
//correction









// enum Audiostate {
//   playing,
//   paused,
//   stopped,
  
// }

// void main(){
// const audioState = Audiostate.stopped; 
// switch (audioState){
//   case Audiostate.stopped:
//   print('Play next song');
//   break;
//   case Audiostate.playing:
//   print('increase your volume');
//   break;
//   case Audiostate.paused:
//   print('I am cooking');
//   break;

// }
 //Chapter 6
// var sum = 1;
// while (sum < 10) {
// sum += 4;
// print(sum);

//chapter 6 do-while loop
// var sum = 1;
// do {
// sum += 4;
// print(sum);
// } while (sum < 10);

// var sum = (1 + 3 - 2 * 4 + 8);
// while (sum < 10) {
// sum += (1 + 3 - 2 * 4 + 8);
// }
// print('while loop sum: $sum');

//Breakig out of a loop 
// var sum = 1;
// while (true) {
// sum += 4;
// if (sum > 10) {
// break;

// }
// print(sum);
// }

// //Exercise 1
// var counter = 0;
// while (counter<10){
//   counter += 1;
//   print('counter is $counter');

// }
//FOR LOOPS

// for (var i = 0; i < 5; i++) {
// print(i);

// }
// for (var i = 0; i < 5; i++) {
// if (i == 2) {
// continue;
// }
// print(i);
// }


// //Exercise 1
// for (var t = 1; t<=10; t++){
//   print(t * t);
// }

// //Challenge 1
// const number =6;
// var trial=1;
// var times=0;
// while (trial <6){
//   trial=trial*2;
//   times+=1;
// }
// print(trial);
// print(times);
// print('Next power of 2>= $trial which is 2 to the powerof $times');


//Challenge 2

// const n=10;
// var current = 1;
// var previous = 1;
// var done=2;

//Chapter 3
//Functions 


// void main() {

// final output = compliment(input);
// print(output);
// helloPersonAndPet('Chris', 'Fluffy');
// print(fullName('Joy ', 'Okeke', 'Miss'));
// print(withinTolerance(5));
// print(withinTolerance(15));
// print(withinTolerance(9,min:7,max:11));
// print(youAreWonderful('Joy'));
// print (youAreWonderful('Joy', 10));
// print(youAreWonderful(name: name))


// }


// String compliment(int number) {
// return '$number is a very nice number.';
// }

// void helloPersonAndPet(String person, String pet)
//  {
// print('Hello, $person, and your furry friend, $pet!');
// }

// String fullName(String first, String last, String title) {
// return '$title $first $last';
// String fullName(String first, String last, [String? title]) {
// if (title != null) {
// return '$title $first $last';
// } else {
// return '$first $last';
// }
// }

//  }
// bool withinTolerance(int value, [int min = 0, int max = 10]) {
// return min <= value && value <= max;
// // }
// bool withinTolerance(int value, {int min = 0, int max = 10}) {
// return min <= value && value <= max;
// }

//Making namwd parameters required
// bool withinTolerance({
// required int value,
// int min = 0,
// int max = 10,
// }) {
// return min <= value && value <= max;
// }

// //exercise 1
//  String youAreWonderful(String name){
//     return" You're wonderful $name";
// }
//exercise 2
// String youAreWonderful(String name,int numberPeople){
//    return" You're wonderful, $name .$numberPeople think so";
// }
//Exercise 3
// String youAreWonderful({required name,int numberPeople=30}) {
//    return" You're wonderful, $name .$numberPeople think so";

// }
// void hello() {
// print('Hello!');

// // }
// void main(){
//   Challenge1();
//   Challenge2();
// }

// void Challenge1(){
//   double areaCircle(double radius){
//     return pi*radius*radius;
//   }
//   final result=areaCircle(30);
//   print(result);
// }
// void Challenge2(){
//   //  bool isNumberDivisible(int number, int divisor)=>number % divisor==0;
//    bool isNumberDivisible(int number, int divisor){
//     return number % divisor==0;
//    }
// bool isPrime(int number){
//   for (var i=2; i <= sqrt(number);i ++){
//     if(isNumberDivisible(number, i)){
//       return false;
//     }
//   }
//   return true;

// }

// print(isPrime(6));
// print(isPrime(13));
// print(isPrime(8893));
// }

// void main(){
// final user = User();
// user.name = 'Ray';
// user.id = 42;
// print(user);
// print(user.toJson());
// final myObject = MyClass();
// final anotherObject = myObject;
// instance:
// print(myObject.myProperty); // 1
// anotherObject.myProperty = 2;
// print(myObject.myProperty);

// final myPassword = Password();
// final text = myPassword.getPlainText();
// print(text);

// final myPassword = Password();
// final text = myPassword.plainText;
// print(text);
// final myPassword = Password();
// final text = myPassword.obfuscated;
// print(text);

// final myPassword = Password();
// myPassword.plainText = r'Pa$$vv0Rd';
// final text = myPassword.plainText;
// print(text);
// final shortPassword = Password();
// shortPassword.plainText = 'aaa';
// final result = shortPassword.plainText;
// print(result);



// }


// class User {
// int id = 0;
// String name = '';

// String toJson() {
// return '{"id":$id,"name":"$name"}';
// }

// @override
// String toString() {
// return 'User(id: $id, name: $name)';
// }

// }

// class MyClass {
// var myProperty = 1;
// }
// class Password {
// String _plainText = 'pass123';

// // String getPlainText() {
// //  return _plainText;
// //  }
// String get plainText => _plainText;

// String get obfuscated {
// final length = _plainText.length;
// return '*' * length;
// }

// // set plainText(String text) => _plainText = text;
// set plainText(String text) {
// if (text.length < 6) {
// print('Passwords must have 6 or more characters!');
// return;
// }
// _plainText = text;
// }

// }

// void main(){
// final rectangle=Rectangle();
// rectangle. _width=2.45;
// rectangle. _height=3.00;

// print('width: ${rectangle._width}');
// print('height:${rectangle._height}');
// print('area:${rectangle.area}');

// }
// class Rectangle{
//   double _width=0;
//   double  _height=0;

//   double get width=> _width;
//   set width(double value){
//     if (value<0){
//       print('Width cannot be negative');
//     }
//     else{
//       _width=value;
//     }
//   }

//   double get height=> _height;
//   set height(double value){
//     if(value<0){
//       print('Height cannot be negative');
//     }
//     else{
//       _height=value;
//     }
//   }

// double get area=>_width*_height;
// }


//Chapter 9


// void main (){
//  final user = User(id:42 , name: 'Ray');//defining my class
// print(user);



//  final anonymousUser = User.anonymous();
// print(anonymousUser); //always define your properties


// }





// class User {//code we had at the end of chapter 8

// // User(int id, String name) {//Adding a long form constructor
// // this.id = id;
// // this.name = name;
// // }


// // User(this.id, this.name);//replacing long form consturctor with short

// // User.anonymous() {
// // id = 0;//named constructor with the dot
// // name = 'anonymous';
// // }

// // User.anonymous() : this(0, 'anonymous');//forwarding constructor to replace named one
// User({int id = 0, String name = 'anonymous'}) : _name = name, _id = id;//unmaned constructor that is optionla
// User.anonymous() : this();
// // int id = 0;
// // String name = '';

// int _id;
// String _name;//since you have defined the values of annonymous in the forward constructor there is no nedd writing the again

// //I put an underscore to my variables to make them private

// // String toJson() {
// // return '{"id":$id,"name":"$name"}';
// // }
// @override
// String toString() {
// return 'User(id: $_id, name: $_name)';
// }
// }
// //Exercise one

// void main(){
// final phonenumber=PhoneNumber('09011117818');
// print(phonenumber.value);


// final bert=Student('Bert', 'Smith', 95);
// final ernie=Student('Ernie', 'Jones', 85);
// print("$bert\n$ernie");

// }


// class PhoneNumber {
  
// const PhoneNumber(this.value);

// final String value;
// @override
//   String toString(){
//     return value;
//   }








// }

// class Student{
//   Student(this.firstName,this.lastName,this.grade);
//   final String firstName;
//   final String lastName;

//   int grade;
//   String result(){
//     return 'Student:$firstName $lastName $grade';
//   }

//   @override
//   String toString()=>
//   "$firstName $lastName $grade";
  
// }

//Chapter 10


// class SomeClass {
// static int myProperty = 0;
// static void myMethod() {
// print('Hello, Dart!');
// }
// }
// //utility methods


// class Math {
// static num max(num a, num b) {
// return (a > b) ? a : b;
// }
// static num min(num a, num b) {
// return (a < b) ? a : b;
// }
// }

// //chapter 10 challenge
// class Sphere{
//   const Sphere({required int radius}): _radius= radius;

//   final int _radius;
  
//   double get volume => (4/3)* pi* _radius*_radius*_radius;

//   double get area=> 4*pi*_radius*_radius;

// static const double pi=3.142;
// }


//Chapter 11 Nullability

// void main() {
// // print(isPositive(3)); // true
// // // print(isPositive(-1));//false

// // String? profession;
// // // print(profession);


// // profession="Basketball player";
// // print(profession);


// // const iLove = 'Dart';
// // int? age;
// // double? height;
// // String? message;

// // print(age);
// // print(height);
// // print(message);

// // String? name;
// // name='Ray';
// // print(name.length);


// //  String? message;
// // final text = message ?? 'Error';//if-null operator
// // print(text);

// // double? fontSize;//null aware assignment operator
// // fontSize = fontSize ?? 20.0;
// // fontSize ??= 20.0;//alternative shorter part


// // int? age;
// // print(age?.isNegative);//null aware acess operator

// // bool flowerIsBeautiful = isBeautiful('flower')!;//null bang operator


// }

// isBeautiful(String? item) {
// if (item == 'flower') {
// return true;
// } else if (item == 'garbage') {
// return false;
// }
// return null;
// }
// class User {
// String? name;
// int? id;
// user
// ?..name = 'Ray'//null aware cascade operator
// ..id = 42;

// }


// void main (){
// final joy=Name(surname:'Okeke' , givenName:'Joy', surnameIsFirst: true);
// print(joy);
// }


// class Name{

//   Name({required this.givenName,this.surname, this.surnameIsFirst=false});

//   String givenName="";
//   String? surname="";

//   bool surnameIsFirst;
    
//     @override
//   String toString(){
//     if(surname==null){
//       return givenName;
//     }
//     if(surnameIsFirst){
//       return '$surname $givenName';
//     }
//     return '$givenName $surname';
//     }
//   }
//   //Chapter 12 Lists
// void main(){
// //   var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];

// // // var snacks = [];

// // List<String> snacks = [];

// // // var snacks = <String>[];//alternative method
// // print(desserts);

// // //Assesing elements

// // final secondElement = desserts[1];
// // print(secondElement);

// // ///when you want to find the index and you knoe the name of what you're looking for
// // final index = desserts.indexOf('pie');
// // final value = desserts[index];
// // print('The value at index $index is $value.');

// // //SAssiging new values to list elements
// // desserts[1] = 'cake';
// // print(desserts);  //you have changed cupcakes to just cake

// // //Adding elements to the end of a list
// // desserts.add('brownies');
// // print(desserts);

// // //Inserting elements
// // desserts.insert(1, 'ice cream');
// // print(desserts);//you just want to put an element while other elements move back

// // //Removing elements
// // desserts.remove('cake');
// // print(desserts);
// // //Alternatively  removing the value of the index
// // desserts.removeAt(0);
// // print(desserts);


// // //Sorting lists
// // final integers = [32, 73, 2, 343, 7, 10, 1];
// // integers.sort();
// // print(integers);//it will arrange it from the smallest to the greatest


// // final smallest = integers[0];
// // print(smallest);// 1
// // final lastIndex = integers.length - 1;
// // final largest = integers[lastIndex];
// // print(largest);

// //Exercise 1

// // List<String> Months=[];

// // //Exercise 2
// // Months.add('January ' );
// // Months.add('Febuary');
// // Months.add('March');
// // Months.add('April');
// // Months.add('May');
// // Months.add('June');
// // Months.add('July');
// // Months.add('August');
// // Months.add('September');
// // Months.add('October');
// // Months.add('November');
// // Months.add('December');
// // print(Months);


// // //Exercise 3
// // final index =Months.indexOf('March');
// // final value = Months[index];
// // print('The value at index $index is $value');


// // // Exercise 4
// // Months.remove('March');
// // print(Months);

// // //Exercise 5

// // Months.insert(2,'March');
// // print(Months);


// // //List properties

// // const drinks = ['water', 'milk', 'juice', 'soda'];


// // print(drinks.first);

// // print (drinks.last);

// // //Alternatively
// // print(drinks[0]);

// // print([drinks.length - 1]);
// // //Checking if the list contains an element
// // print(drinks.isEmpty);

// // print(drinks.isNotEmpty);
// //Looping over elements in a list

// // const desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
// // for (int i = 0; i < desserts.length; i++) {
// // final item = desserts[i];
// // print('I like $item.');
// // }

// // //Using for in loop

// // for (final item in desserts) {//shorter form
// // print('I also like $item!');
// // }
// // //Exercise 

// // const numbers = [1, 2, 4, 7];
// // for(int i=0; i<numbers.length; i++){
// //   final square=numbers[i];
// //   print(square*square);

// // }
// // for(final square in numbers){
// //   print(square*square);
// // }
// // //Code as UI
// // //spread operator(...)
// // const pastries = ['cookies', 'croissants'];
// // const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];
// // final dessertss = ['donuts'];
// // dessertss.addAll(pastries);
// // dessertss.addAll(candy);
// // print(dessertss);

// /

// }  
  



// import 'dart:math';

// import 'package:characters/characters.dart';
// void main(){

// //collection if
// //When creating a list, you can use a collection if to determine whether to include a
// // particular element.

// const peanutAllergy = true;
// const sensitiveCandy = [
// 'Junior Mints',
// 'Twizzlers',
// if (!peanutAllergy) 'Reeses',
// ];
// print(sensitiveCandy);

// // collection for
// //There’s also a collection for , which you can use within a list to generate elements based
// // on another list.
// const deserts = ['gobi', 'sahara', 'arctic'];
// var bigDeserts = [
// 'ARABIAN',
// for (var desert in deserts) desert.toUpperCase(),
// ];
// print(bigDeserts);


// List<int>? nullableList = [2, 4, 3, 7];
// nullableList = null;//Nullable list

// List<int?> nullableElements = [2, 4, null, 3, 7];//nullable lists and nullable element




// //Challenge 1

// const strings = ['cookies', 'ice cream', 'cake', 'donuts', 'pie', 'brownies'];
//   String longeststring='';

//  for (var s=1; s<strings.length; s++){
//     if (strings[s].length > longeststring.length){
//     longeststring=strings[s];
//     print(longeststring);
//   }
//  }


// String  shorteststring='';

// for ( var s= 1; s< strings.length; s++){
//   if (strings[s].length < shorteststring.length){
//     shorteststring=strings[s];
//   print(shorteststring);
//   }
// }

// //challenge 2
// final myList = [1, 4, 2, 7, 3, 4, 9];
// myList.sort();
// print(myList);

// int previous;

// for(final number in myList){

// }


// //SETS


// final Set<int> someSet = {};//empty set
// // final someSet = <int>{};//alternative

// final anotherSet = {1, 2, 3, 1};
// print(anotherSet);

// final desserts = {'cake', 'pie', 'donut'};
// print(desserts.contains('cake'));// true
// print(desserts.contains('cookies'));


// final drinks = <String>{};
// drinks.add('cola');
// drinks.add('water');
// drinks.add('cola');
// print(drinks);



// drinks.remove('water');
// print(drinks);

// drinks.addAll(['juice', 'coffee', 'milk']);
// print(drinks);

// for (final drink in drinks) {
// print("I'm drinking $drink.");
// }

// print(drinks);

// final beverages = drinks;
// print(drinks);


// beverages.remove('milk');
// print(drinks);
// print(beverages);

// final liquids = drinks.toSet();
// print(drinks);
// liquids.remove('coffee');
// print(drinks);
// print(liquids);


// //Exercise 1
// final Set<String> animals= {'Dog', 'Chicken', 'Cat'};
// print(animals.contains('sheep'));

// animals.remove('Cat');
// print(animals);

// // final setA = {8, 2, 3, 1, 4};
// // final setB = {1, 6, 5, 4};



// // final intersection = setA.intersection(setB);
// // print(intersection);


// // final differenceA = setA.difference(setB);
// // print(differenceA);

// // final differenceB = setB.difference(setA);
// // print(differenceB);

// //Exercise 2

// final nullSafe = {'Swift', 'Dart', 'Kotlin'};
// final pointy = {'Sword', 'Pencil', 'Dart'};
// final dWords = {'Dart', 'Dragon', 'Double'};


// final intersection= nullSafe.intersection(pointy).intersection(dWords);
// print(intersection);

// final union=nullSafe.union(pointy).union(dWords);
// print(union);


// // final randomGenerator = Random();//random number generation
// // final randomIntList = <int>[];
// // for (int i = 0; i < 10; i++) {
// // // 2
// // final randomInt = randomGenerator.nextInt(10) + 1;
// // randomIntList.add(randomInt);
// // }
// // print(randomIntList);

// final randomGenerator=Random();
// final randomIntList=<int>[];
// for(int i=0; i<7; i++){
//   final randomInt=randomGenerator.nextInt(16)+1;
//   randomIntList.add(randomInt);
// }
// print(randomIntList);




// // final uniqueValues = <int>{};//Finding duplictes
// // final duplicates = <int>{};

// // for(int number in randomIntList){
 
// //     if (uniqueValues.contains(number)){
// //       duplicates.add(number);
    
// //   } 
// //   uniqueValues.add(number);

// // }
// // print(duplicates);

// //Challenge 1


// Set <String> uniqueCodePoints(String text){
//   final uniqueCharacters= <String>{};
//   for(final codePoint in text.runes){
//     final character=String.fromCharCode(codePoint);
//     uniqueCharacters.add(character);

//   }
//   return uniqueCharacters;
// }




// const paragraphOftext= ' I do not actaully understand how the exercises in Dart programming are made easier while the challenges are tough. Anyways, we will keep going no matter no what';
// print(uniqueCodePoints(paragraphOftext));




// ///Challenge 2

// final setA = {8, 2, 3, 1, 4};
// final setB = {1, 6, 5, 4};


// // final differenceA= setA.difference(setB);//Alternative method for simpler sets
// // print(differenceA);

// // final differenceB=setB.difference(setA);
// // print(differenceB);

// // final symmetricDifference= differenceA.union(differenceB);
// // print(symmetricDifference);

// final intersections= setA.intersection(setB);

// final unions= setA.union(setB);
// final symmetricDifference=union.toSet();

// for(int element in intersections){
//   symmetricDifference.remove(element);
  
// }
// print(symmetricDifference);

// import 'dart:convert';
// void main (){


// //Chapter 14 Maps
// final Map<String, int> emptyMap = {};//empty map
// //  final emptyMap = <String, int>{};
// //  final inventory = {
// //  'cakes': 20,
// //  'pies': 14,
// //  'donuts': 37,
// //  'cookies': 141,
// //  };

// final digitToWord = {
// 1: 'one',
// 2: 'two',
// 3: 'three',
// 4: 'four',
// };

// // print(inventory);
// print(digitToWord);

// final treasureMap = {//Talking about unique keys

// // final treasureMap = {
// // 'garbage': 'in the dumpster',
// // 'glasses': 'on your head',
// // 'gold': 'in the cave',
// // 'gold': 'under your mattress',
// // };








// 'garbage': ['in the dumpster'],
// 'glasses': ['on your head'],
// 'gold': ['in the cave', 'under your mattress'],
// };//There are two gold statements there and you don't want to get confused.


// //Operations in map

// final inventory = {
// 'cakes': 20,
// 'pies': 14,
// 'donuts': 37,
// 'cookies': 141,
// };


// final numberOfCakes = inventory['cakes'];
// print(numberOfCakes);


// print(numberOfCakes?.isEven);//using the null aware access operator to check if the number of cake is even 


// //Adding elements to a map
// inventory['brownies'] = 3;

// print(inventory);

// //Updating an element

// inventory['cakes'] = 1;
// print(inventory);

// //Removing elements from a map
// inventory.remove('cookies');
// print(inventory);

// //Acessing the keys and values using  the properties

// print(inventory.keys);
// print(inventory.values);

// //Checking for key or value existence
// print(inventory.containsKey('pies'));
// print(inventory);

// print(inventory.containsValue(42));
// print(inventory);

// for (var key in inventory.keys) {
// print(inventory[key]);
// }

// for (final entry in inventory.entries) {
// print('${entry.key} -> ${entry.value}');
// }

// print(inventory.isEmpty);//Accessing properties
// print(inventory.isNotEmpty);
// print(inventory.length);

// // Exercise 1
// final id ={
//   'name':'Joy',
//   'profession': 'Student',
//   'country': 'Nigeria',
//   'city': 'Aba'

 
// };

// id['country']='Canada';
// id['city']='Toronto';
// print(id);

// for(final entry in id.entries){
//   print('${entry.value}');
// }


// //Maps, Classes and Json

// //objects to map

// final userObject = User(
// id: 1234,
// name: 'John',
// emails: [
// 'john@example.com',
// 'jhagemann@example.com',
// ],
// );


// //easiet way to convert an oject to a map
// final userMap = userObject.toJson();

// print(userMap);

// //converting map to json
// final userString = jsonEncode(userMap);
// print(userString);

// //converting json string to a map
// //write the json string to the main function

// final jsonString =
// '{"id":4321,"name":"Marcia","emails":["marcia@example.com"]}';
// //decoding back to a map
// final jsonMap = jsonDecode(jsonString);
// print(jsonMap);

// //Handling errors


// if (jsonMap is Map<String, dynamic>) {
// print("You've got a map!");
// } else {
// print('Your JSON must have been in the wrong format.');
// }

// final userMarcia = User.fromJson(jsonMap);
// print(userMarcia);


// ///Challenge 1


// }




// class User {
// const User({
// required this.id,
// required this.name,
// required this.emails,
// });
// final int id;
// final String name;
// final List<String> emails;

// Map<String, dynamic> toJson() {
// return <String, dynamic>{
// 'id': id,
// 'name': name,
// 'emails': emails,
// };
// }
// factory User.fromJson(Map<String, dynamic> jsonMap) {
// // 1
// dynamic id = jsonMap['id'];
// if (id is! int) id = 0;
// // 2
// dynamic name = jsonMap['name'];
// if (name is! String) name = '';
// // 3
// dynamic maybeEmails = jsonMap['emails'];
// final emails = <String>[];
// if (maybeEmails is List) {
// for (dynamic email in maybeEmails) {
// if (email is String) emails.add(email);
// }
// }
// // 4
// return User(
// id: id,
// name: name,
// emails: emails,
// );
// }

// @override//overriding so that our output will not return instance of a user
// String toString() {
// return 'User(id: $id, name: $name, emails: $emails)';


// }





// // }


// void main(){
// //Chapter 15
// final myList = ['bread', 'cheese', 'milk'];
// print(myList);

// for (final item in myList) {

// }
// final reversedIterable = myList.reversed;
// print(reversedIterable);

// final reversedList = reversedIterable.toList();
// print(reversedList);

// //Creating an iterable
// // 4//It shows an error, abstract classes can't be instantiated

// // Iterable<String> myIterable = ['red', 'blue', 'green'];

// // //accessing elements
// // final thirdElement = myIterable.elementAt(2);
// // print(thirdElement);

// // final firstElement = myIterable.first;
// // final lastElement = myIterable.last;
// // print(firstElement);
// // print(lastElement);

// // final numberElements = myIterable.length;
// // print(numberElements);

// //Exercises

// Map<String, int> products={

//   'phone': 20,
//   'charger':15,
//   'extensions':30,
//   'powerbanks':45
// };

// //
// Iterable<String> myIterable =products.keys;

// //
//   final thirdElement = myIterable.elementAt(2);
//   print(thirdElement);

// //

// final firstElement = myIterable.first;
//  final lastElement = myIterable.last;
//  print(firstElement);
//  print(lastElement);


// // //
// final numberElements = myIterable.length;
//  print(numberElements);

// for (var element in myIterable){
//   print('$element');
// }




// }


