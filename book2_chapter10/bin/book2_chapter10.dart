import 'dart:convert';

void main(){
// // int x = null;
// // print(x.isEven);

// // const malformedJson = 'abc';
// // jsonDecode(malformedJson);

// int.parse('42');// OK
// int.parse('hello');


// // const json = '{"name":"bob"}';
// // try {
// // dynamic result = jsonDecode(json);
// // print(result);
// // } catch (e) {
// // print('There was an error.');
// // print(e);
// // }

// // const json = 'abc';
// // try {
// // dynamic result = jsonDecode(json);
// // print(result);
// // } on FormatException {
// // print('The JSON string was invalid.');
// // }

// // const numberStrings = ["42", "hello"];
// // try {
// // for (final numberString in numberStrings) {
// // final number = int.parse(numberString);
// // print(number ~/ 0);
// // }
// // } on FormatException {
// // handleFormatException();
// // } on UnsupportedError {
// // handleDivisionByZero();
// // }
// // }
// // void handleFormatException() {
// // print("You tried to parse a non-numeric string.");
// // }
// // void handleDivisionByZero() {
// // print("You can't divide by zero.");


// final database = FakeDatabase();
// database.open();
// try {
// final data = database.fetchData();
// final number = int.parse(data);
// print('The number is $number.');
// } on FormatException {
// print("Dart didn't recognize that as a number.");
// } finally {
// database.close();
// }
// }
// class FakeDatabase {
// void open() => print('Opening the database.');
// void close() => print('Closing the database.');
// String fetchData() => 'forty-two';

const password = 'password1234';
try {
validatePassword(password);
print('Password is valid');
} on ShortPasswordException catch (e) {
print(e.message);
} on NoLowercaseException catch (e) {
print(e.message);
} on NoUppercaseException catch (e) {
print(e.message);
} on NoNumberException catch (e) {
print(e.message);


}
}
//Writing Custom Exceptions


class ShortPasswordException implements Exception {
ShortPasswordException(this.message);
final String message;
}

class NoNumberException implements Exception {
NoNumberException(this.message);
final String message;
}
class NoUppercaseException implements Exception {
NoUppercaseException(this.message);
final String message;
}
class NoLowercaseException implements Exception {
NoLowercaseException(this.message);
final String message;
}

void validateLength(String password) {
final goodLength = RegExp(r'.{12,}');
if (!password.contains(goodLength)) {
throw ShortPasswordException('Password must be at least 12 characters!');
}
}

void validateLowercase(String password) {
final lowercase = RegExp(r'[a-z]');
if (!password.contains(lowercase)) {
throw NoLowercaseException('Password must have a lowercase letter!');
}
}
void validateUppercase(String password) {
final uppercase = RegExp(r'[A-Z]');
if (!password.contains(uppercase)) {
throw NoUppercaseException('Password must have an uppercase letter!');
}
}



void validateNumber(String password) {
final number = RegExp(r'[0-9]');
if (!password.contains(number)) {
throw NoNumberException('Password must have a number!');
}
}

void validatePassword(String password) {
  validateLength(password);
validateLowercase(password);
validateLength(password);
validateLowercase(password);
}