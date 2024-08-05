//Extension Syntax
void main(){
  final original = 'abc';
final secret = encode(original);
print(secret);


final secrett = 'abc'.encoded;

final secrettt = 'abc'.encoded;
print(secret);

final originall = 'I like extensions!';
final secretttt = original.encoded;
final revealed = secret.decoded;
print(secret);
print(revealed);

print(5.cubed);

final timeRemaining = 3.minutes;
print(timeRemaining);
}



class SomeClass{

}

extension on SomeClass {
// your custom code
}


//String Extension Example
String encode(String input) {
final output = StringBuffer();
for (final codePoint in input.runes) {
output.writeCharCode(codePoint + 1);
}
return output.toString();
}


extension on String {
// String get encoded {
// final output = StringBuffer();
// for (final codePoint in runes) {
// output.writeCharCode(codePoint + 1);
// }
// return output.toString();
// }


// /'/Adding a Decode Extension'

// String get decoded {
// final output = StringBuffer();
// for (final codePoint in runes) {
// output.writeCharCode(codePoint - 1);
// }
// return output.toString();
// }//TOO MANY DUPLICATIONS

//A better way to refactor
String get encoded => _code(1);
String get decoded => _code(-1);
String _code(int step) {
final output = StringBuffer();
for (final codePoint in runes) {
output.writeCharCode(codePoint + step);
}
return output.toString();
}
}

//Int Extension Example
extension on int {
int get cubed {
return this * this * this;
}
}

//challenge 1
extension timeExtension on int{

Duration get minutes => Duration(minutes:this);


}