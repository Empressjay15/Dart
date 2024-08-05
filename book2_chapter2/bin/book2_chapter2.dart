
// void main (){
// //Assigning a function to a variable
// Function multiply = (int a, int b){
//   return a*b;

// };

// // Pavoid main(){ssing Functions to Functions
// // void namedFunction(Function anonymousFunction){


// //  Returning Functions From Functions
// Function namedFunction(){
//   return ()=> print('hello');
// }

// //  Higher‐Order Functions With Collections
// //(functions that return other functions)

// const/ numbers= [1,2,3];

// numbers.forEach((int number){
//   print(3 * number);


// });

// //A simplified version
// numbers.forEach((number) {
//  print(3
//  * number);
//  });

// // Because the anonymous function body only contains a single line, you can replace the
// //  curly braces with arrow notation:

//  numbers.forEach((number) => 
// print(3
//  * number));

// //The standard way to loop over a collection is with a for in loop
// for(final number in numbers){
//   print(3* number);

// }
// //if your function is a variable use a for-each loop
// final triple=(int x) => print(3 * x);
// numbers.forEach(triple);

// // Map collections are not iterable, so they don’t directly support for-in loops but they have a for-each mrthod

// final flowerColor={
//   'roses': 'red',
//   'violets':'blue',
//   };

//   flowerColor.forEach((flower,color){
//     print('$flower are $color');

//   });

//   print('I \u2764 Dart');
//   print('and so do you');

// // Mapping One Collection to Another

// const numberss= [2,4,6,8,10,12];
// final looped= <int>[];
// for (final x in numberss){
//   looped.add(x * x);
// };
// print(looped);

// final mapped= numberss.map((x) => x * x);
// print(mapped);

// print(mapped.toList());

// // Filtering a Collection
//  final myList = [1, 2, 3, 4, 5, 6];
//  final odds = myList.where((element) => element.isOdd);
 
//  print(odds);

// //  Consolidating a Collection
// //Using Reduce
// const evens = [2, 4, 6, 8, 10, 12];
//  final total = evens.reduce((sum, element) => sum + element);
//  print(total);

// // final emptyList = <int>[];
// //  final result = emptyList.reduce((sum, element) => sum + element);

//  //You will get an error meanwhile fold wil solve it for you
//  //Using fold
//   const evenss = [2, 4, 6, 8, 10, 12];
//  final totals = evens.fold<int>(
//    0,
//   (sum, element) => sum + element,
//  );
//  print(totals);
// final emptyListt=<int>[];
// final result= emptyListt.fold<int>(
//   0,
//   (sum , element)=> sum + element,

// );


// print(result); 


// //Sorting a List
// final desserts= ['cookies' ,'pie', 'donuts' ,'brownies'];
// desserts.sort();
// print(desserts);

// desserts.sort((d1, d2) => d1.length.compareTo(d2.length));


// // Combining Higher‐Order Methods
// const dessertss= ['cake' ,'pie', 'donuts','brownies'];

// final bigTallDesserts=dessertss
// .where((desserts) => desserts.length>5)
// .map((desserts) => desserts.toUpperCase())
// .toList();
// print(bigTallDesserts);

// //Exercises
// final score= [89,77,46,93,82,67,32,88];
// score.sort();
// print(score);

// final bGrades=score
// .where((scores) => scores >= 80 && scores <= 90);
// print(bGrades.toList());

// }

// void main (){
// final myButton=Button(
//   title: 'Click me!',
//   onPressed: (){
//     print('Clicked');
//   },
// );
//  myButton.onPressed();
//  myButton.onPressed.call();
//  //creating the instance of my widget
//   final myWidget=MyWidget(onTouch: (x)=> print(x),
//   );
// //alternatively calling on touch externally
// myWidget.onTouch(3.14);

// //instance of another widget
// final myWidgett=AnotherWidget(timeStamp: ()=>DateTime.now().toIso8601String(),
// );

// //calling the widget externally

// //  final timeStamp = myWidget.timeStamp?.call();
// //  print(timeStamp);


// final manager= StateManager();
// // final myButtonn=Button(title: 'Click me!', onPressed: (){
// //   // manager.handleButtonClick();

// //replacing
// final myButtonn= Button(title: 'Click me!', onPressed:   manager.handleButtonClick,);



// const cities=['Istanbul','Ankara','Izmir','Bursa','Antalya'];
// cities.forEach((city)=> print(city));

// //Using tearoffs instead

// cities.forEach(print);


// //instance of the exercise surface
// final surface= Surface((x,y) => print('($x,$y)'),);

// //calling touch with the values given 
// surface.touch(202.3,134.0);


// //closure example


// //challenges
// final animals={
//   'sheep':99,
//   'goats':32,
//   'snakes':7,
//   'lions':80,
//   'seals':18
// };




// // final total= animals.entries
// // .where((entry)=>entry.ke)

 

// } 


// class Button{
//   Button({
//    required this.title,
//     required this.onPressed,


//   });
//   final String title;
//   final Function onPressed;//
// }
 
// // Specifying the Function Type
 
//  final anotherButton=Button(
//   title: 'Click me, too!',
//   onPressed: (int apple){
//     print('Clicked');
//     return 42;
//   },
//  );
// //running this will cause a runtime error nbut  it can be fixed

// //value setter callback
//  class MyWidget{
//   MyWidget({
//     required this.onTouch,

//   });

//   final void Function(double xPosition)onTouch;

//  }


// //value getter callback
// class AnotherWidget{
//   AnotherWidget({
//     this.timeStamp,
//   });
//   final String Function() ?timeStamp;
// }
// //Simplifying With Tear‐Offs
// class StateManager{
//   int _counter = 0;

//   void handleButtonClick () {
//     _counter++;
//   }
// }


// //Renaming with type aliase
// class Gizmo{
//   Gizmo({
//     required this.builder,
//   });

//   // final Map<String, int> Function(List<int>) builder;
//   //rewriting the Gizmo class
//   final MapBuilder builder;

// }
// //adding type aliase
// typedef MapBuilder = Map<String, int> Function(List<int>);



// //Exercises
// class Surface{
//   Surface(this.onTouchh);

//   // the callback function
//   final TouchHandler onTouchh;

//   //4; creating a method named touch
//   void touch(double x, double y)=>onTouchh(x,y);
// }

// //making the aliase type outside of the class
// typedef TouchHandler= void Function (double x, double y);
void main(){
  final animals={
  'sheep':99,
  'goats':32,
  'snakes':7,
  'lions':80,
  'seals':18
};




final total=animals.keys
.where((key) => key.startsWith('s'))
.fold(0,(sum, key)=>sum+(animals[key] ?? 0));
print(total);

//calling repeatTask
// final result=repeatTask(4, 2, (num input){
//   return input*input;
// });
// print(result);
final resultt = repeatTask(4, 2, (num input ) {
 return input * input;
});
print(resultt);

}


//Challenge 2
// int repeatTask(int times, int input,Function task){
//   int result=task(input);
//   for(var i=0; i<times; i++){
//     result=task(result);
//   }
//   return result;
//   }
//Challenge2
int repeatTask (int times, int input, Function task) {
int result = task(input);
for (var i = 1; i < times; i++) {
  result = task(result);
}
return result;
}