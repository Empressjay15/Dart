import 'dart:convert';
import 'dart:io';
 import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:math';

// void main(){


//   final myFuture = Future<int>.delayed(
// // 2
// Duration(seconds: 1),
// // 3
// () => 42,
// );
// print(myFuture);//gives you an instance of future runtime value

// void main(){
//   final =Future<String>.delayed(
//     Duration(seconds:2 ),
//     ()=>'I am from the future.'
//     );
// }



//Getting the results
//Using callbacks
// print('Before the future');
// final myFuture = Future<int>.delayed(
// Duration(seconds: 1),
// () => 42,
// )
// .then(
// (value) => print('Value: $value'),
// )
// .catchError(
// (Object error) => print('Error: $error'),
// )
// .whenComplete(
// () => print('Future is complete'),
// );
// print('After the future');

//Using async-await

// Future<void> main() async {
// print('Before the future');
// // 2
// final value = await Future<int>.delayed(
// Duration(seconds: 1),
// () => 42,
// );
// print('Value: $value');
// print('After the future');


// //handling potential errors
// //using a try-catch block

// print('Before the future');
// try {
// final value = await Future<int>.delayed(
// Duration(seconds: 1),
// () => 42,
// );
// print('Value: $value');
// } catch (error) {
// print(error);
// } finally {
// print('Future is complete');
// }
// print('After the future');
// }

//Making a get request

// }




  Future<void> main() async {
    try{//hanling errors
final url = 'https://jsonplaceholder.typicode.com/todos/1';
// final url = 'https://jsonplaceholder.typicode.com/todos/pink-elephants';//testing for http exception
final parsedUrl = Uri.parse(url);

// 2, 3
final response = await http.get(parsedUrl);

// 4
final statusCode = response.statusCode;
if (statusCode != 200) {
throw HttpException('$statusCode');
}

// 5
final jsonString = response.body;
dynamic jsonMap = jsonDecode(jsonString);

// 6
final todo = Todo.fromJson(jsonMap);
print(todo);
  }


  
on SocketException catch(error){
  print(error);
} on HttpException catch (error) {
print(error);
} on FormatException catch (error) {
print(error);
}


}


// //Asynchronous Network Requests

// class Todo {
// Todo({
// required this.userId,
// required this.id,
// required this.title,
// required this.completed,
// });
// factory Todo.fromJson(Map<String, dynamic> jsonMap) {
// return Todo(
// userId: jsonMap['userId'] as int,
// id: jsonMap['id'] as int,
// title: jsonMap['title'] as String,
// completed: jsonMap['completed'] as bool,
// );
// }
// final int userId;
// final int id;
// final String title;
// final bool completed;

// @override
// String toString() {
// return 'userId: $userId\n'
// 'id: $id\n'
// 'title: $title\n'
// 'completed: $completed';
// }
// }


// //Exercises
// Future<void>main()async{

//   try{
// final message=await Future<String>.delayed(Duration(seconds: 2),


// ()=> ' I am from the future.'
// );
// print(message);
//   } catch (error) {
//     print(error);
//   }


// //testing the future out
// final web = FakeWebServer();
// try {
// final city = 'Portland';
// final degrees = await web.fetchTemperature(city);
// print("It's $degrees degrees in $city.");
// } on ArgumentError catch (error) {
// print(error);
// }




// }
// // //Creating a future from the scratch

//  abstract class DataRepository {
//  Future<double> fetchTemperature(String city);

// }
// class FakeWebServer implements DataRepository {
//  @override
//   Future<double> fetchTemperature(String city) {
//    return Future(()=> 42.0);//making the return a futrure to correect the erro
//   }

// // //completing with a value
// // // @override
// // // Future<double> fetchTemperature(String city) {
// // // return Future.value(42.0);
// // // }

// // //completing with an error

// // // @override
// // // Future<double> fetchTemperature(String city) {
// // // return Future.error(ArgumentError("$city doesn't exist."));
// // // }

// // //Giving a delayed response


// // // @override
// // // Future<double> fetchTemperature(String city) {
// // // return Future.delayed(
// // // Duration(seconds: 2),
// // // () => 42.0,
// // // );
// // // }

// // // Incase you want to return an error

// // // @override
// // // Future<double> fetchTemperature(String city) {
// // // return Future.delayed(
// // // Duration(seconds: 2),
// // // () => throw ArgumentError('City does not exist.'),
// // // );
// // // }


// // //Using async method

// // // @override
// // // Future<double> fetchTemperature(String city) async {
// // // return 42.0;

// // //Using a completer
// // //First import dart:async

//  @override
//  Future<double> fetchTemperature(String city) {
// // 1
//  final completer = Completer<double>();

//  if (city == 'Portland') {
// // // 2
//  completer.complete(42.0);
// } else {
// // // 3
//  completer.completeError(ArgumentError("City doesn't exist."));
// }
// // // 4
//  return completer.future;
//  }
// }
//  



//Challenges 1
Future<void> main() async {
  //Challenge 1
  final web = FakeWebServer();
  try {
    final city = 'Portland';
    final degrees = await web.fetchTemperature(city);
    print("It's $degrees degrees in $city.");
  } on ArgumentError catch (error) {
      print(error);
  }

//Challenge 2

//step one
  const base = 'https://fcc-weather-api.glitch.me/api/current';
  const latitude = 45.5;
  const longitude = -122.7;
  final url = Uri.parse('$base?lat=$latitude&lon=$longitude');

//step two
  try{
    final response = await http.get(url);
    final statusCode = response.statusCode;
    if (statusCode != 200) {
      throw HttpException('$statusCode');
    }

    //step three
    final jsonString = response.body;

    //step four
    final jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;

    //step five
    print(jsonMap);

    //step six
    final temperature = jsonMap['main']['temp'] as double;
    final city = jsonMap['name'] as String;

    //step seven
    print("It's $temperature degrees in $city");

  }

  //step eight
  on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }


//Challenge 3
  final urll = Uri.parse('https://jsonplaceholder.typicode.com/comments');
  final commentList = <Comment>[];
  
  try {
    final response = await http.get(url);
    final statusCode = response.statusCode;
    if (statusCode == 200) {
      final rawJsonString = response.body;
      dynamic jsonList = jsonDecode(rawJsonString) as List<dynamic>;
      for(var element in jsonList) {
        final comment = Comment.fromJson(element as Map<String, dynamic>);
        commentList.add(comment);
      }
    } else {
      throw HttpException('$statusCode');
    }
  } on SocketException catch (error) {
    print(error);
  } on HttpException catch (error) {
    print(error);
  } on FormatException catch (error) {
    print(error);
  }

  print('Comment list length: ${commentList.length}');
}

class Comment {
  Comment({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory Comment.fromJson(Map<String, dynamic> jsonMap) {
    return Comment(postId: jsonMap['postId'] as int,
     id: jsonMap['id'] as int,
      name: jsonMap['name'] as String,
       email: jsonMap['email'] as String,
        body: jsonMap['body'] as String
        );
  }

  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;


  @override
  String toString() {
    return 'Post ID: $postId, ID: $id, Name: $name, Email: $email, Body: $body';
  }
}





abstract class DataRepository {
   Future<double> fetchTemperature(String city);
 }

 class  FakeWebServer implements DataRepository {
  @override
  Future<double> fetchTemperature(String city) {
    final random = Random();
    final isError = random.nextBool();
    if(isError) {
      return Future.error(HttpException("Couldn't reach server"));
    } else {
      final temp = random.nextDouble() * 50;
      return Future.value(temp);
    }
  }

 }
