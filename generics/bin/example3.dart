void main(List<String> args) {
  // Constrained Generic Type Definitions

  const momAndDad = {
    'mom': Person(),
    'dad': Person(),
  };
  const brotherAndSisterAndMyFish = {
    'Brother': Person(),
    'Sister': Person(),
    'fish': Fish()
  };
  final allValue = [momAndDad, brotherAndSisterAndMyFish];
  print(allValue);

  describe(allValue);
}

typedef BreathingThings<T extends CanBreathe> = Map<String, T>;

void describe(Iterable<BreathingThings> values) {
  for (final map in values) {
    for (final keyAndValue in map.entries) {
      print('Will call breathe() on ${keyAndValue.key}');
      keyAndValue.value.breathe();
    }
  }
}

mixin CanBreathe {
  void breathe();
}

class Person with CanBreathe {
  const Person();
  @override
  void breathe() {
    print("$Person is breathing..");
  }
}

class Fish with CanBreathe {
  const Fish();

  @override
  void breathe() {
    print("fishing ....");
  }
}
