
void main (){

//   //Changing a case

// const userInput = 'sPoNgEbOb@eXaMpLe.cOm';
// final lowerCase=userInput.toLowerCase();
// print(lowerCase);

//Trimming
const userInput = ' 221B Baker St. ';
final trimmed = userInput.trim();
print(trimmed);//you can use trim right or trim left depending on what you wnat to do

//padding

// final time = Duration(hours: 1, minutes: 32, seconds: 57);
// final hours = time.inHours;
// final minutes = time.inMinutes % 60;
// final seconds = time.inSeconds % 60;
// final timeString = '$hours:$minutes:$seconds';
// print(timeString); 

//Replacing the first line of my code above

final time = Duration(hours: 1, minutes: 2, seconds: 3);
final hours = time.inHours;
final minutes = '${time.inMinutes % 60}'.padLeft(2, '0');
final seconds = '${time.inSeconds % 60}'.padLeft(2, '0');
final timeString = '$hours:$minutes:$seconds';
print(timeString);//pad right to add characters at the end of the string

//Splitting and joining

const csvFileLine = 'Martin,Emma,12,Paris,France';
final fields = csvFileLine.split(',');
print(fields);

//joining
final joined = fields.join('-');
print(joined);

//Replacing

const phrase = 'live and learn';
final withUnderscores = phrase.replaceAll(' ', '_');
print(withUnderscores);

//Exercises
const countryNames='''
France
USA
Germany
Benin
China
Mexico
Mongolia''';
final country=countryNames.split('\n');
print(country);

//exercise 2
final sentence="How's the Dart book going? :]";
final emoji=sentence.replaceAll(':]', '🙂');
print(emoji);




//Building strings
final message = StringBuffer();
message.write('Hello');
message.write(' my name is ');
message.write('Ray');
message.toString();
print(message);

//Buiding strings in a loop
for (int i = 2; i <= 1024; i *= 2) {
 print(i);
}

//printing in a list format, the print statwment will  not allow you do that so you have to call that buufer something up ther
final buffer = StringBuffer();
for (int i = 2; i <= 1024;i *= 2) {
 buffer.write(i);
 buffer.write(' ');
}
print(buffer);

// Exercise
final bufferr=StringBuffer();
for(int i =0; i <10; i++){
  for(int j=0; j<10;j++){
    if(i==j){
      buffer.write('');

    }else{
      buffer.write('*');
    }
  }
  buffer.write('\n');
}
print(bufferr);



//string validation
const text = 'I love Dart';

//checking for elements in a string
print(text.startsWith('I'));

print(text.endsWith('Dart'));

print(text.contains('love')); // true
print(text.contains('Flutter')); 

////Regular Expressions

final regex = RegExp('cat');

print(regex.hasMatch('concatenation'));// true
print(regex.hasMatch('dog')); // false
print(regex.hasMatch('cats')); 

//Alternative method
print('concatenation'.contains(regex));// true
print('dog'.contains(regex)); // false
print('cats'.contains(regex));

//Matching single characters

//special character(.)
//it will match any single character
final matchSingle = RegExp('c.t');
print(matchSingle.hasMatch('cat')); // true
print(matchSingle.hasMatch('cot')); // true
print(matchSingle.hasMatch('cut')); // true
print(matchSingle.hasMatch('ct'));

//special character (.?)
// Will match special optional characters

final optionalSingle = RegExp('c.?t');
print(optionalSingle.hasMatch('cat'));// true
print(optionalSingle.hasMatch('cot')); // true
print(optionalSingle.hasMatch('cut')); // true
print(optionalSingle.hasMatch('ct')); 

//matching multiple characters

final oneOrMore = RegExp('wo+w');
print(oneOrMore.hasMatch('ww')); // false
print(oneOrMore.hasMatch('wow')); // true
print(oneOrMore.hasMatch('wooow')); // true
print(oneOrMore.hasMatch('wooooooow'));


 final zeroOrMore = RegExp('wo*w');
 print(zeroOrMore.hasMatch('ww'));       // true
 print(zeroOrMore.hasMatch('wow'));     // true
 print(zeroOrMore.hasMatch('wooow'));    // true
 print(zeroOrMore.hasMatch('wooooooow'));


//Matching multiple instances of any charcter combine the (.)and the + and *

 final anyOneOrMore = RegExp('w.+w');
 print(anyOneOrMore.hasMatch('ww'));        // false
 print(anyOneOrMore.hasMatch('wow'));       // true
 print(anyOneOrMore.hasMatch('w123w'));     // true
 print(anyOneOrMore.hasMatch('wABCDEFGw'));

//Matching sets
//Will match either one of the center characters

 final set = RegExp('b[oa]t');
 print(set.hasMatch('bat'));  // true
 print(set.hasMatch('bot'));  // true
 print(set.hasMatch('but'));  // false
 print(set.hasMatch('boat')); // false
 print(set.hasMatch('bt')); 

//matching ranges

final letters = RegExp('[a-zA-Z]');
 print(letters.hasMatch('a')); // true
 print(letters.hasMatch('H'));  // true
 print(letters.hasMatch('3z')); // true
 print(letters.hasMatch('2')); 

//if you want to specify which characters not to match, use (^)
 final excluded = RegExp('b[^ao]t');
 print(excluded.hasMatch('bat'));  // false
 print(excluded.hasMatch('bot'));  // false
 print(excluded.hasMatch('but'));  // true
 print(excluded.hasMatch('boat')); // false
 print(excluded.hasMatch('bt'));

//matching special characters 


final escaped = RegExp(r'c\.t');
 print(escaped.hasMatch('c.t')); // true
 print(escaped.hasMatch('cat'));

//Matching the begining and the end
final numbers=RegExp('r[0-9]');

//  print(numbers.hasMatch('5552021'));
//  print(numbers.hasMatch(abcdefg2));
final onlyNumbers = RegExp(r'^[0-9]+$');
print(onlyNumbers.hasMatch('5552021')); 
print(onlyNumbers.hasMatch('abcefg2'));


// The regex 
// ^[0-9]+$
//  // false
//  is a bit cryptic, so here’s the breakdown:
//  ^
//  : Matches the beginning of the string.
//  [0-9]
//  +
//  : Matches one number in the range 0-9.
//  : Matches one or more instances of the previous character, in this case, one or more numbers in the range 0-9.
//  $
//  : Matches the end of the string.
//  In summary, the regex 
// end.
//  Note
//  : The 
// ^[0-9]+$
//  ^
//  only will match strings that contain numbers from start to
//  character has two meanings in regex. When used inside 
// []
//  square brackets, it means “not”. When used elsewhere, it matches the beginning
//  of the line.

//Vlaidating a password

const password='Password1234';
final lowercase=RegExp(r'[a-z]');
final uppercase=RegExp(r'[A-Z]');
final number=RegExp(r'[0-9]');

if(!password.contains(lowercase)){
  print('Your password must have a lowercase letter!');
 
 } else if(!password.contains(uppercase)){
  print('Your password must contain an uppercase letter');

 }else if (!password.contains(number)){
  print('Your password must contaian a number');

 }else {
  print('Your password is okay.');
 }

if (password.length < 12){
  print('Your password must be at least 12 characters long');

}

// Alternatively you can use regex to say the same thing above
 final goodLenghth= RegExp(r'.{12,}');
 if(!password.contains(goodLenghth)){
  print('Your password must be up to 12  characters long');

 }

//Exercises
final cardNumber=RegExp(r'^[0-9]{16}$');
print(cardNumber.hasMatch('1264849347593802'));
print(cardNumber.hasMatch('123av'));

//Extracting text with substrting
const htmlText='''
<!DOCTYPE html>
 <html>
 <body>
 <h1>Dart Tutorial</h1>
 <p>Dart is my favorite language.</p>
 </body>
 </html>''';

 final heading = htmlText.substring(34, 47);
 print(heading);
final start = htmlText.indexOf('<h1>') + '<h1>'.length;// 34
 final end = htmlText.indexOf('</h1>');                 // 47
 var headingg = htmlText.substring(start, end);
 print(heading);
//finding multiple matches

const textt = '''
 <h1>Dart Tutorial</h1>
 <h1>Flutter Tutorial</h1>
 <h1>Other Tutorials</h1>
 ''';
 var position = 0;
 while (true) {
  var start = textt.indexOf('<h1>', position) + '<h1>'.length;
  var end = textt.indexOf('</h1>', position);
  if (start == -1 || end == -1) {
    break;
  }
  final heading = textt.substring(start, end);
  print(heading);
  position = end + '</h1>'.length;
 }
print(textt);

//Extracting text with regex
// 1
 final headings = RegExp(r'<h1>(.+)</h1>');
 // 2
 final matches = headings.allMatches(textt);
 for (final match in matches) {
  // 3
  print(match.group(1));
 }

//Challenges
final email=RegExp(r'^\w+\@\w+\.\w+$');
print(email.hasMatch('okekej472@gmail.com'));

//Challenge 2
//solving with substring
const timestamp=' [00:12.34]Row, row, row your boat';
final minutess=timestamp.substring(1,3);
final secondss=timestamp.substring(4,6);
final hundredths=timestamp.substring(7,9);
final lyrics=timestamp.substring(10);

print('minutess:$minutess');
print('secondss:$secondss');
print('hundreths:$hundredths');
print('lyrics:$lyrics');

//using regular expressions
//using regular expressions
// ^: start
// \[: literal [
// (\d+): group of digits
// : literal :
// \.: literal .
// \]: literal ]
// (.+): Group of characters (lyrics)
// $: end

final textss = RegExp(r'^\[(\d+):(\d+)\.(\d+)\](.+)$');

final match = textss.firstMatch(timestamp);

final minutesss = match?.group(1);
final secondsss = match?.group(2);
final hundrethss = match?.group(3);
final lyricss = match?.group(4);

print('minutes: $minutesss');
print('seconds: $secondsss');
print('hundreths: $hundrethss');
print('lyrics: $lyricss');





}















