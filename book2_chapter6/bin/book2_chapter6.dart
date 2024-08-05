/ void main() {
//   final platypus = Platypus();
//   final parrots = Parrots();
//   platypus.layEggs();
//   parrots.layEggs();

// }

// abstract class Bird {
//   void fly();
//   void layEggs();
// }

mixin EggLayer {
  void layEggs() {
    print('Plop plop');
  }
}

mixin Flyer {
  void fly() {
    print('Swoosh swoosh');
  }
}

// class Parrots extends Bird with EggLayer, Flyer {}


abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();
  @override
  String toString() {
   return "I'm a $runtimeType";
  }
}

// class Platypus extends Animal with EggLayer {
//   @override
//   void eat() {
//     print('Munch munch');
//   }
//   @override
//   void move() {
//     print('Glide glide');
//   }
// }


void main() {
  //challenge one
final calculator = Calculator();
calculator.sum(2, 6);

//challenge two
final billy = Platypus(weight: 5.0);
final smart  = Platypus(weight: 8.0);
final great = Platypus(weight: 0.0);
final bast = Platypus(weight: 6.0);
final kide = Platypus(weight: 7.0);

final platypi = [billy, smart, great, bast, kide];

for (final platypus in platypi) {
  print(platypus.weight);
}

print('----');

platypi.sort();
for (final platypus in platypi) {
  print(platypus.weight);
}


}

//challenge one
class Calculator with Adder {}

  mixin Adder{    
  void sum(num a, num b) {
    print ('the sum is ${a + b}');
  
  }



}



//challenge two

class Platypus extends Animal with EggLayer implements Comparable<Platypus>{
 Platypus({required this.weight});
 
  final double weight;

  @override
  void eat() {
    print('Munch munch');
  }
  @override
  void move() {
    print('Glide glide');
  } 

  @override
  int compareTo(Platypus other) { 

    if (weight > other.weight){
      return 1;
      
    } else if (weight < other.weight){ 
  return -1;

    }
    return 0;
  }
}
