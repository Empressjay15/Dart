// void main(){
  
// //Using the Interface
//   final DataRepository repository = FakeWebServer();
// final temperature = repository.fetchTemperature('Berlin');
// //The neat trick is that by using an unnamed constructor for the factory, you can
// // final repository = DataRepository();
// // final temperature = repository.fetchTemperature('Manila');




// }


// //Creating an Abstract Interface Class
// abstract class DataRepository {
//   //Adding a Factory Constructor
//   //factory constructors can return subclasses

// double? fetchTemperature(String city);
// }

// //Implementing the Interface
// class FakeWebServer implements DataRepository {
// @override
// double? fetchTemperature(String city) {
// return 42.0;
// }
// }

//challenges 1
void main(){
  final myBottle = Bottle();
  myBottle.open();
}

// Creating an interface 
abstract class Bottle {
  // Add a factory constructor to Bottle
  factory Bottle() {
    return SodaBottle();
  }
  void open();
}

// Define the SodaBottle class which implements Bottle
class SodaBottle implements Bottle {
  @override
  void open() {
    print('Fizz fizz');
  }
}


