void main(List<String> args) {
  // Generic Sorting with Comparable
  sort(ascending: false);

  print("-----------------------");
  
  sort(ascending: true);
}

int isLessThan<T extends Comparable>(T a, T b) => a.compareTo(b);
int isGreaterThan<T extends Comparable>(T a, T b) => b.compareTo(a);
const ages = [100, 20, 10, 90, 40];
const names = ['Foo', 'Bar', 'Baz'];
const distances = [3.1, 10.2, 1.3, 4.2];

void sort({required bool ascending}) {
  final comparator = ascending ? isLessThan : isGreaterThan;

  print([...ages]..sort(comparator));
  print([...names]..sort(comparator));
  print([...distances]..sort(comparator));
}
