void main(List<String> args) {
  const List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

  List<int> b = [];

  for (var i = 0; i < a.length; i++) {
    if (a[i] % 2 == 0) {
      print(i); // printing index of even element
      b.add(a[i]); // adding element of list a on index [1 , 3, 5, 7, 9 ]
    }
  }

  print(b);

  List<int> l = [];

  int i = 0;
  for (var e in a) {
    if (++i % 2 == 0) {
      l.add(e);
    }
  }

  print(l);

  // One liner
  print([
    for (var e in a)
      if (++i % 2 == 0) e
  ]);
}
