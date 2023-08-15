// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> arguments) {
// mixins are like seprate entities that can bring functionality to exiting classes and enumerations

// Mixins are a way of defining code that can be reused in multiple class hierarchies

// The use of mixins enhances code reusability. Diamond Problem in OOPs: Using multiple inheritances often leads to the diamond problem. Mixins are not a way of using multiple inheritances in Dart;
// rather, they're a way of reusing code from multiple hierarchies without using the extend keyword.
// dart does not have multiple inheritance
// Simple Mixins

  final person = Person();

  person.jump(speed: 4);

  person.walk(speed: 5);

  
}

mixin HasSpeed {
  abstract double speed;
}

mixin CanJump on HasSpeed {
  void jump({
    required double speed,
  }) {
    print('$runtimeType is jumping at the speed of $speed');
    this.speed = speed;
  }
}

mixin CanWalk on HasSpeed {
  void walk({
    required double speed,
  }) {
    print('$runtimeType is walking at the speed of $speed');
    this.speed = speed;
  }
}

class Person with HasSpeed, CanJump, CanWalk {
  @override
  double speed;
  Person({this.speed = 0.0});
}
