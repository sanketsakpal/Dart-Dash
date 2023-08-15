void main(List<String> args) {
  //  Factory Constructors

  print(Vehicle.car());
  print(Vehicle.truck());
}

class Vehicle {
  const Vehicle();
  // factory constructor either create this class or there subclass
  factory Vehicle.car() => Car();
  factory Vehicle.truck() => Truck();

  @override
  String toString() => 'vehicle $runtimeType';
}

class Car extends Vehicle {
  const Car();
}

class Truck extends Vehicle {
  const Truck();
}
