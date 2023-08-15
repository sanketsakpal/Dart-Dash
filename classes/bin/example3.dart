// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Sub classing

  // is inherited logic from one class from another class

  final v = Vehicle(wheelCount: 4);
  print(v.toString());
  print(Car(wheelCount: 5));
  print(Cars());
}

class Vehicle {
  final int wheelCount;
  const Vehicle({
    required this.wheelCount,
  });

  @override
  String toString() => 'Vehicle(wheelCount: $wheelCount)';
}

class Car extends Vehicle {
  Car({required super.wheelCount});
}

class Cars extends Vehicle {
  const Cars() : super(wheelCount: 3);
}
