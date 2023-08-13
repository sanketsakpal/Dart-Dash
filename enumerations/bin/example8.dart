// ignore_for_file: public_member_api_docs, sort_constructors_first
void main(List<String> args) {
  // Implementing Comparable on Enumerations
  print(TeslaCar.values);
  print([...TeslaCar.values]..sort());
}

enum TeslaCar implements Comparable<TeslaCar> {
  modelX(weightInKg: 30.9),
  modelY(weightInKg: 0.4),
  modelZ(weightInKg: 0.3);

  final double weightInKg;
  const TeslaCar({
    required this.weightInKg,
  });

  @override
  int compareTo(TeslaCar other) => weightInKg.compareTo(other.weightInKg);
}
