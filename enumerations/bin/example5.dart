void main(List<String> args) {
  // Falling Through on Enumeration Cases

  final vehicle = VehicleType.car;

  switch (vehicle) {
    case VehicleType.bicycle:
    case VehicleType.bike:
    case VehicleType.car:
      print("this is vehicle");
      break;
    case VehicleType.motorcycle:
      print("usually used for delivery food");
    default:
  }
}

enum VehicleType {
  car,
  bike,
  motorcycle,
  bicycle,
}
