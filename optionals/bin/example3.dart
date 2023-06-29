void main(List<String> args) {
  // default nullable values

  int a;

  // print(a);// so  we get error here because the non nullable value , it must has to be assign some value before going to use

  String? lastName;

  // print(lastName!.length ??
  //     "test"); // its gives us error at runtime because we are using null checker on null values
  //(Null check operator used on a null value

  //if your using nullable value with variable and you want to use that variable you have to
  // use null aware operator

  String? nullName;
  print(nullName ?? "test");

  List<String?>? names = [];
  // both list and list of string are nullable
  names = null;
  names = List.empty();

  names = ["test", null];
  names = null;
  names?.add(
      "ts"); // here our name = null that why we have to use null aware operator to add values in names array or list

//   List<String> name2 = [];

//  final test =  name2.first;

// in other programming lang the first element is an optional value  so your programme can't crash
// but in dart the first value always return the value but our app is crash if first value in null.

// so to avoid that

  final nam =
      names?.first; // perform your action like this it will tell the compiler
  //  that if the value of first element is empty than just return null
  print(nam ?? "first name not found");
}
