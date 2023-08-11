import 'dart:collection';

import 'package:collection/equality.dart';

void main(List<String> args) {
  //  sets
// package

// packages are pieces of program or libarys that people are created for us and publish somewhere
// dart pub add "package name"

//sets are data of uniq list of values

  final names = {
    'foo',
    'bar',
    'baz',
    'test',
  };
  names.add('foo');
  print(names);

  print("---------------");

  final names2 = ["foo", "bar", "baz", "foo"];

  final uniqueNames = {...names2};
  print(uniqueNames);
// sets work with hashable objects
  print("---------------");

  final foo1 = "Foo";
  var foo2 = "Foo";

  print(foo1.hashCode);
  print(foo2.hashCode);
  print("---------------");

  final age1 = {20, 30, 40};
  final age2 = {20, 30, 40};

  // we can't do comparison like this in both set and list
  if (age1 == age2) {
    print('Ages are equal');
  } else {
    print("Ages are not equal");
  }
  print("---------------");

  // how we can do comparison like this using dart collection

  if (SetEquality().equals(age1, age2)) {
    print('Ages are equal');
  } else {
    print("Ages are not equal");
  }

  print("---------------");

  // set equality is irrespective of order of value for example : -
  final age3 = {30, 40, 20};
  if (SetEquality().equals(age1, age3)) {
    print('Ages are equal');
  } else {
    print("Ages are not equal");
  }
  print("---------------");
}
