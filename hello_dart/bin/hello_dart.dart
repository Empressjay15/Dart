import 'package:characters/characters.dart';


void main() {


//Exercise 1
const age1=42;
const age2=21;
//Exercise 2
const averageAge=((age1+age2)/2);

//The result is a double to avoid loss of precision from the division operation.

//Challenge 1
const attendanceScore=90;
const homeworkScore=80;
const examScore=94;

double attendancePercent=((20/100));
print(attendancePercent);
double homeworkPercent=((30/100));
print(homeworkPercent);
double examPercent=((50/100));
print (examPercent);

final attendance=((attendanceScore*attendancePercent));
print(attendance);
final homework=((homeworkScore*homeworkPercent));
print(homework);
final exam=((examScore*examPercent));
print(exam);
//Getting the total grade
double totalGrade=((attendance+homework+exam));
print(totalGrade);
//converting total grade to integer
print (totalGrade.toInt());

//challenge 2
const value=10/2;
print(value);
//The value is a Double

//Chapter 4
const dart ='😂';
print('This is a smiling emoji,$dart');


 //concantenation
 var message ='Hello' +' my name is ';
 const name=  'Joy';
 message+=name;
 print(message);

 //Exercise
 const firstname=' Joy ';
 const lastname=' Okeke ';
 
 //Exercise 2
 const fullname=(firstname + lastname);

 //Exercise 3
 const Details='Hello, my name is $fullname';
 print(Details);

 const bigString = '''
You can have a string
that contains multiple
lines
by
doing this.''';
print(bigString);


















  
}
