void main(List<String> args) {
  Animal animal = Cat();

  switch (animal) {
    case Dog():
      print(' dog');
    case Cat():
      print(' cat');
    case Human():
      print(' human');
  }
}

sealed class Animal {}

class Human implements Animal {}

class Dog implements Animal {}

class Cat implements Animal {}

sealed class Animals {}

final class Animals1 {}

base class Animals2 {} // extends

interface class Animals3 {}

mixin class Animals4 {}

class Animals5 {}
