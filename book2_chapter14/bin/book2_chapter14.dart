import 'dart:isolate';
import 'dart:io';
// void main(){
//   print("OK, I'm counting...");
// print(playHideAndSeekTheLongVersion());
// }



// String playHideAndSeekTheLongVersion() {
// var counting = 0;
// for (var i = 1; i <= 10000000000; i++) {
// counting = i;
// }
// return '$counting! Ready or not, here I come!';
// }

//Replacing the code above
// Future<String> playHideAndSeekTheLongVersion() async {
// var counting = 0;
// await Future(() {
// for (var i = 1; i <= 10000000000;i++) {
// counting = i;
// }
// });
// return '$counting! Ready or not, here I come!';
// }

//Running in the void main

// Future<void> main() async {
// print("OK, I'm counting...");
// print(await playHideAndSeekTheLongVersion());
// }

//One way isolate communication
//Here are some examples where one-way communication is fine:
// Decoding JSON.
// Performing a scientific calculation.
// Processing an image.

//Using a port to return results
//Import dart isolate

//Replacing the code I have above
// void playHideAndSeekTheLongVersion(SendPort sendPort) {
// var counting = 0;
// for (var i = 1; i <= 1000000000; i++) {
// counting = i;
// }
// final message = '$counting! Ready or not, here I come!';
// // 2
// Isolate.exit(sendPort, message);
// }

// //Running in main

// Future<void> main() async {
// // 1
// final receivePort = ReceivePort();
// // 2
// await Isolate.spawn<SendPort>(
// // 3
// playHideAndSeekTheLongVersion,
// // 4
// receivePort.sendPort,
// );
// // 5
// final message = await receivePort.first as String;
// print(message);
// }

//Sending multiple messages
//Replacing the code
// void playHideAndSeekTheLongVersion(SendPort sendPort) {
// sendPort.send("OK, I'm counting...");
// var counting = 0;
// for (var i = 1; i <= 1000000000; i++) {
// counting = i;
// }
// sendPort.send('$counting! Ready or not, here I come!');
// sendPort.send(null);
// }

// //Running in main
// Future<void>main()async{

//   final receivePort = ReceivePort();
// // final isolate = await Isolate.spawn<SendPort>(
// // playHideAndSeekTheLongVersion,
// // receivePort.sendPort,
// // );

// //Running in main(passing multiple arguments when spawning an isolate)
// final isolate = await Isolate.spawn<List<Object>>(
// playHideAndSeekTheLongVersion,
// [receivePort.sendPort, 999999999],
// );


// receivePort.listen((Object? message) {
// if (message is String) {
// print(message);
// } else if (message == null) {
// receivePort.close();
// isolate.kill();
// }
// });

// }

// //Passing Multiple Arguments When Spawning an Isolate
// //Replacing the code
// void playHideAndSeekTheLongVersion(List<Object> arguments) {
// final sendPort = arguments[0] as SendPort;
// final countTo = arguments[1] as int;
// sendPort.send("OK, I'm counting...");
// var counting = 0;
// for (var i = 1; i <= countTo; i++) {
// counting = i;
// }
// sendPort.send('$counting! Ready or not, here I come!');
// sendPort.send(null);
// }

// //Two‐Way Isolate Communication

// // Here are some examples of long-running tasks where two-way communication may be
// // necessary:
// // Communicating with a game server.
// // Decoding multiple JSON files.
// // Handling server clients

// //Defining the Work
// //import 'dart:io';


// class Work {
// Future<int> doSomething() async {
// print('doing some work...');
// sleep(Duration(seconds: 1));
// return 42;
// }
// Future<int> doSomethingElse() async {
// print('doing some other work...');
// sleep(Duration(seconds: 1));
// return 24;
// }
// }

// //Then, add the following entry point as a top-level function:
// Future<void> _entryPoint(SendPort sendToEarthPort) async {
// // 2
// final receiveOnMarsPort = ReceivePort();
// sendToEarthPort.send(receiveOnMarsPort.sendPort);
// // 3
// final work = Work();
// // TODO: add listener


// //Listening for Messages from the Parent Isolate
// //Replace the comment // TODO: add listener from above with the following listener

// receiveOnMarsPort.listen((Object? messageFromEarth) async {
// // 1
// await Future<void>.delayed(Duration(seconds: 1));
// print('Message from Earth: $messageFromEarth');

// // 2
// if (messageFromEarth == 'Hey from Earth') {
// sendToEarthPort.send('Hey from Mars');
// }
// else if (messageFromEarth == 'Can you help?') {
// sendToEarthPort.send('sure');
// }

// // 3
// else if (messageFromEarth == 'doSomething') {
// final result = await work.doSomething();

// // 4
// sendToEarthPort.send({
// 'method': 'doSomething',
// 'result': result,
// });
// }
// else if (messageFromEarth == 'doSomethingElse') {
// final result = await work.doSomethingElse();
// sendToEarthPort.send({
// 'method': 'doSomethingElse',
// 'result': result,
// });
// sendToEarthPort.send('done');
// }
// });

// }

// //Preparing to Create the Child Isolate

// class Earth {
// // 2
// final _receiveOnEarthPort = ReceivePort();
// SendPort? _sendToMarsPort;
// Isolate? _marsIsolate;


// // TODO: create isolate
// ......................
// //C....ace the comment // TODO: create isolate above with the following code:

// Future<void> contactMars() async {
// if (_marsIsolate != null) return;
// _marsIsolate = await Isolate.spawn<SendPort>(
// _entryPoint,
// _receiveOnEarthPort.sendPort,
// );
// // TODO: add listener

// // Listening for Messages From the Child Isolate

// // Replace the comment // TODO: add listener above with the following listener on the
// // _receiveOnEarthPort stream:

// _receiveOnEarthPort.listen((Object? messageFromMars) async {
// await Future<void>.delayed(Duration(seconds: 1));
// print('Message from Mars: $messageFromMars');

// // 1
// if (messageFromMars is SendPort) {
// _sendToMarsPort = messageFromMars;
// _sendToMarsPort?.send('Hey from Earth');


// 302// 2
// else if (messageFromMars == 'Hey from Mars') {
// _sendToMarsPort?.send('Can you help?');
// }
// else if (messageFromMars == 'sure') {
// _sendToMarsPort?.send('doSomething');
// _sendToMarsPort?.send('doSomethingElse');
// }
// else if (messageFromMars is Map) {
// final method = messageFromMars['method'] as String;
// final result = messageFromMars['result'] as int;
// print('The result of $method is $result');
// }
// // 4
// else if (messageFromMars == 'done') {
// print('shutting down');
// dispose();
// }
// });
// }
// // 3
// void dispose() {
// _receiveOnEarthPort.close();
// _marsIsolate?.kill();
// _marsIsolate = null;
// }
// }


//Running the code in main
// Future<void> main() async {
// final earth = Earth();
// await earth.contactMars();
// }

//Challenges 1
// Challenge 1 


import 'dart:convert';
import 'dart:isolate';

void main (){
  challenge1();
  challenge2();
}
Future <void> challenge1() async {
  final receivePort = ReceivePort();
final n = 10;
final arugments = {
  'sendPort' :
  receivePort.sendPort,
  'n':n,
};
await
Isolate.spawn<Map<String,Object>>(fibonacci,arugments);

final message = await 
receivePort.first as int;
print('Fibonacci number $n is $message');
}




void fibonacci (Map<String,Object>arguments){
  final sendPort = arguments['sendPort'] as SendPort ;
  final n = arguments['n'] as int ;
var current = 1;
var previous =1;
var done = 2;
while (done < n){
  final next = current+ previous;
  previous=current;
  current =next;
  done+=1;
}
Isolate.exit(sendPort,current);

}





//Challenge 2
Future <void> challenge2()async{
  final receivePort = ReceivePort();
await
Isolate.spawn<SendPort>(_entryPoint,receivePort.sendPort);

final map = await receivePort.first as Map<String,dynamic>;
print(map);
}

const jsonString = '''
{
 "language": "Dart",
 "feeling": "love it",
 "level": "intermediate"
}
''';


void _entryPoint (SendPort sendPort){
  dynamic jsonMap = jsonDecode(jsonString);

  Isolate.exit(sendPort,jsonMap);
}