void main(List<String> args) {
  // Unconstrained Generic Type Definitions
  const one = KeyValue(1, 2);
  print(one);
}

typedef KeyValue<K, V> = MapEntry<K, V>;
