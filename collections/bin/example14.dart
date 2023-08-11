import 'package:collection/collection.dart';

void main(List<String> args) {
  //  collections

  ///
  ///
  testBoolList();
  testCanonicalizedMap();
  combineIterable();
  combineListView();
  combineMapView();
  mergeMap();
}

void testBoolList() {
  final boolList = BoolList(10, growable: true);
  print(boolList);
  boolList[4] = true;
}

void testCanonicalizedMap() {
  final info = {"name": "test", "age": 10, "gen": "male"};
// uniqueness of key is determine by us not by hash code
  final canonMap = CanonicalizedMap.from(info, (key) {
    return key.length;
  });
  print(canonMap);
}

void combineIterable() {
  final List one = [1, 2, 3];
  final List two = [10, 20, 30];
  final List three = [100, 200, 300];
  two.add(60);
  final combine = CombinedIterableView([one, two, three]);

  print(combine);
}

void combineListView() {
  // combineListView is a view of list of list and it's unmodifiable
  final List name = ["1", "2", "3"];
  final List name1 = ["10", "20", "30"];
  final List name2 = ["100", "200", "300"];

  final combineName = CombinedListView([name, name1, name2]);

  print(combineName);
  // combineName.removeAt(0); // we are get exception here because combineListView can not be modify
}

void combineMapView() {
  var map1 = {"a": 1, "b": 2, "c": 3};
  var map2 = {"a": 4, "b": 5, "c": 6};
  var map3 = {"a": 7, "b": 8, "c": 9};

  final combineMap = CombinedMapView([map1, map2, map3]);

  print(combineMap);
// it's unmodifiable
  // same key are not allow

  print(combineMap['b']);
  print(combineMap['€']);
  print(combineMap['d']);
  print(combineMap['e']);
  print(combineMap['f']);
}

void mergeMap() {
  final info1 = {
    "name": "test",
    "age": 23,
  };

  final info2 = {
    "name": "test2",
    "age": 223,
  };

  final merge = mergeMaps(info1, info2);

  print(merge);

  // in case of same key it will take value of second  map
}
