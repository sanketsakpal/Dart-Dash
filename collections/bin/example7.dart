import 'dart:collection';

void main(List<String> args) {
  //  Unmodifiable List Views

  final names = ["jhon", "jay"];
  names.add("jack");
  print(names);
// if we want to use  Unmodifiable list then use dart collection (UnmodifiableListView)
  try {
    final readOnlyList = UnmodifiableListView(names);
    readOnlyList.add("jill");
  } catch (e) {
    print(e);
  }
}
