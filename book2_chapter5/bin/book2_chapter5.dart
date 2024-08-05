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

//Challenge 2
final database = DataStorage();
final note = database.findNote(2);
final allNotes = database.allNotes();
database.saveNote("I'm Sammy, I love taking notes.");
print(note);
print(allNotes);



}

// Creating an interface for bottle

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

//challenge 2

abstract class DataStorage {
  factory DataStorage() => FakeDatabase();

  String findNote (int id);
  List<String> allNotes ();
  void saveNote (String note);
}

class FakeDatabase implements DataStorage {

  @override
  String findNote (int id) {
    return 'This is a note';
  }

  @override
  List<String> allNotes () {
    return [ 
      'This is a note', 
      'This is another note',
      'This is the last note',
    ];
  }

  @override
  void saveNote (String note) {
    //Saving note to cyber space
  }

}