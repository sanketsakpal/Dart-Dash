void main(List<String> arguments) {
  // Generic Integer or Double

  final int intValue = eitherIntOrDouble(WhatToReturn.int) as int;

  final double doubLeValue = eitherIntOrDouble1();

  print(intValue);
  print(doubLeValue);
}

enum WhatToReturn { int, double }

num eitherIntOrDouble(WhatToReturn whatToReturn) {
  switch (whatToReturn) {
    case WhatToReturn.int:
      return 1;
    case WhatToReturn.double:
      return 1.0;
    default:
      return 1;
  }
}

T eitherIntOrDouble1<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.1 as T;
    default:
      throw Exception('Not supported');
  }
}
