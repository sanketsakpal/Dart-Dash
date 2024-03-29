

late String name;
void main(List<String> arguments) {
  // Lazy Initialization and Errors
  try {
    // name = "foo bar";
    print('Hello world: $name!');
  } catch (e) {
    print(e);
  }

// Lazy Initialization to a Function Result
//  we must have use late variable
  print("before");
  late String names = provideName();
  print("after");
  print(names);

  //Late Variables in Classes

  final person = Person();
  print(person.age);
  // late value is print if only they are used
  print(person.description);

  // Late Variable Dependency
  final persons = Persons();
  print(persons.fullname);
  // print(persons.fullname);
  // print(persons.fullname);
  print(persons.firstName);
  print(persons.lastName);

// Multiple Assignments of Late Variables

  final men = Men();
  men.description = "description 1";
  print(men.description);
  men.description = "description 2";
  print(men.description);

  final dog = Dog();
  dog.description = "dd"; // it can be assign once because  of final  keyword
  print(dog.description);

  // Avoiding a Common Pitfall with Late Variables

  // final fnames = Names();
  // print(fnames
  //     .fullName); // we get exception here because of full name depends on first name and last name and they are not initialize
// we have initialize first first name and last name;

  // Initializing Late Final Variables

  late final bool isTeenager;
  const age = 12;
  if (age >= 13 && age <= 19) {
    isTeenager = true;
  } else if (age < 13) {
    isTeenager = false;
  }
  try {
    isTeenager = false;
    print(isTeenager);
  } catch (e) {
    print("TeenAge = $e");
  }

  ////////////////////////////
  ///
  ///- Assigning Late Variables to Non Late Variables
  ///
  print(" late full name is initialized");

  late final fullname = getFullName();
  print("after");
  print(fullname);

  //   Avoiding Constructor Initialization of Late Variables

  final jhonDoe = Human(name: "jhon Doe");
  final jhonDoe1 = Human(name: "jhon Doe1");

  final jhoneDoeFamily =
      WrongImplementationOfFamily(members: [jhonDoe, jhonDoe1]);

  print(jhoneDoeFamily);
  print(jhoneDoeFamily.membersCount);

  final DoeFamily = RightImplementationOfFamily(members: [jhonDoe, jhonDoe1]);

  print(DoeFamily);
  print(DoeFamily.membersCount);
}

// Lazy Initialization to a Function Result

String provideName() {
  print("function is called ");
  return "foo bar";
}

class Person {
  late String description = heavyCalculation();
  final int age;
  Person({this.age = 18}) {
    print("cunstrocutor is called");
  }
  String heavyCalculation() {
    print("function hevyCalulation called");
    return "test";
  }
}

class Persons {
  late String fullname = _getFullName();
  late String firstName = fullname.split(" ").first;
  late String lastName = fullname.split(" ").last;
  String _getFullName() {
    print("get full name is called ");
    return "testing bar";
  }
}

class Men {
  late String description;
}

class Dog {
  late final String description;
}

class Names {
  late final firstName;
  late final lastName;
  late final fullName = "$firstName $lastName";
}

String getFullName() {
  print("get full name call ");
  return "testing late";
}

class WrongImplementationOfFamily {
  // late variables should not initialized in constructor

  final Iterable<Human> members;
  late int membersCount;

  WrongImplementationOfFamily({required this.members}) {
    membersCount = getMembersCount();
  }
  int getMembersCount() {
    print("getting members count");
    return members.length;
  }
}

class RightImplementationOfFamily {
  // late variables should not initialized in constructor

  final Iterable<Human> members;
  late int membersCount = getMembersCount();

  RightImplementationOfFamily({required this.members});
  int getMembersCount() {
    print("getting members count");
    return members.length;
  }
}

class Human {
  final String name;

  Human({required this.name});
}
