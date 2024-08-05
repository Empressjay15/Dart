
// void main() {

// // //   final color = TrafficLight.green;
// // // switch (color) {
// // //   case TrafficLight.green:
// // //   print('Go!');
// // //   break;
// // //   case TrafficLight.yellow:
// // //   print('Slow down!');
// // //   break;
// // //   case TrafficLight.red:
// // //   print('Stop!');
// // //   break;
// // // }

// // final color = TrafficLight.green;
// // print(color.message);

// // const pointA = Point(1, 4);
// // const pointB = Point(3, 2);

// // final pointC = pointA + pointB;
// //   print(pointC);

// // var day = Day.monday;

// // day = day + 2;
// // print(day.name);
// //  // wednesday

// // day += 4;
// // print(day.name); // sunday


// // day++;
// // print(day.name); // monday

// // final restDay = Day.saturday;
// // print(restDay.next);

// // final weather = Weather.cloudy;

// // String serialized = weather.serialize();
// // print(serialized);

// // Weather deserialized = Weather.deserialize(serialized);
// // print(deserialized);

// // final fruit = Fruit.banana;
// // final vegi = Vegetable.carrot;

// // fruit.describe();
// // vegi.describe();

// // String defaultFont = Default.font.value;
// // double defaultSize = Default.size.value;
// // int defaultWeight = Default.weight.value;

// // print(defaultFont);
// // print(defaultSize);
// // print(defaultWeight);

// // }book2_chapter10

// // enum TrafficLight {
// // green,
// // yellow,
// // red,
// // }

// enum TrafficLight {
//   green('Go!'),
//   yellow('Slow down!'),
//   red('Stop!');

//   const TrafficLight(this.message);
//   final String message;

// }


// class Point {
//   const Point(this.x, this.y);
//   final double x;
//   final double y;

//   Point operator +(Point other) {
//     return Point(x + other.x, y + other.y);
// }

//   @override
//   String toString() => '($x, $y)';

// }


// enum Day {
//   monday,
//   tuesday,
//   wednesday,
//   thursday,
//   friday,
//   saturday,
//   sunday;

//   Day operator +(int days) {

//     //1
//     final numberOfItems = Day.values.length;
//     //2
//     final index = (this.index + days) % numberOfItems;
//     //3
//     return Day.values[index];
//   }

//   Day get next {
//     return this + 1;
//   }
// }

// abstract class Serializable {
//   String serialize();
// }

// enum Weather implements Serializable {
//   sunny,
//   cloudy,
//   rainy;

//   @override
//   String serialize() => name;

// static Weather deserialize(String value) {
//   return values.firstWhere(
//     (element) => element.name == value,
//     orElse: () => Weather.sunny,
//     );
// }

// }

// enum Fruit with Describer {
//   cherry,
//   peach,
//   banana,
//   }

//   enum Vegetable with Describer {
//     carrot,
//     broccoli,
//     spinach,
//   }

//   mixin Describer on Enum {
//     void describe() {
//       print('This $runtimeType is a $name.');
//   }
//   }

// //   enum Default {
// //   font,
// //   size,
// //   weight,
// // }


// enum Default<T extends Object> {
//   font<String>('roboto'),
//   size<double>(17.0),
//   weight<int>(400);

//   const Default(this.value);
//   final T value;
// }


// void main() {

//   //challenge 1
//   var day = Day.wednesday;
//   day = day + 2;
//   print(day.name);
  
//   day += 4;
//   print(day.name);

//   day++;
//   print(day.name);

//   day--;
//   print(day.name);

//   day -= 4;
//   print(day.name);

//   day = day - 2;
//   print(day.name);


//   for(final day in Day.values) {
//     print(day.displayName);
//   }

//   //challenge two
//   for(final status in StatusCode.values) {
//     print('Status: ${status.code}, ${status.meaning}');
//   }


// }


//challenge 1

enum Day {
  monday('Monday'),
  tuesday('Tuesday'),
  wednesday('Wednesday'),
  thursday('Thursday'),
  friday('Friday'),
  saturday('Saturday'),
  sunday('Sunday');

  const Day(this.displayName);
  final String displayName;

  Day get next {
    return this - 1;
  }

  Day operator +(int days) => _combine(days, true);

  Day operator -(int days) => _combine(days, false);

  Day _combine(int days, bool isAdding) {
    final sign = (isAdding) ? 1 : -1;
    final numberOfItems = Day.values.length;
    final index = (this.index + sign * days) % numberOfItems;
    return Day.values[index];

  }

}


//challenge two
enum StatusCode {

  ok(200, 'OK'),
  badRequest(400, 'Bad Request'),
  unauthorized(401, 'Unauthorized'),
  forbidden(403, 'Forbidden'),
  notFound(404, 'Not Found'),
  methodNotAllowed(405, 'Method Not Allowed'),
  imaTeapot(418, "I'm a teapot"),
  internalServerError(500, 'Internal Server Error');

  const StatusCode(this.code, this.meaning);
  final int code;
  final String meaning;


}