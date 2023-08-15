// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Abstract Classes

  // are rule to confirming have to follow

  // final car = Car(vehicleKind: VehicleKind.car);
  // print(car);

  final motor = Motor();
  print(motor.accelerate);
}

abstract class Vehicle {
  final VehicleKind vehicleKind;
  Vehicle({
    required this.vehicleKind,
  });
  void accelerate() => print('$vehicleKind is accelerating');
  void decelerate() => print('$vehicleKind is decelerating');

  @override
  String toString() => 'Vehicle(vehicleKind: $vehicleKind)';
}

class Car extends Vehicle {
  Car({required super.vehicleKind});
}

class Motor implements Vehicle {
  @override
  void accelerate() => print('$vehicleKind is accelerating');

  @override
  void decelerate() => print('$vehicleKind is decelerating');

  @override
  VehicleKind get vehicleKind => VehicleKind.motorcycle;
}

enum VehicleKind { car, truck, motorcycle, bicycle }
