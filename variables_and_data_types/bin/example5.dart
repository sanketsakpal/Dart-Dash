// ignore_for_file: unused_local_variable

void main(List<String> args) {
  // assigning const value to non const variable
  // constant value can be assign to final value but not the other way around , we can not assign final variable to const
  final age = 10;

  // invalid operations

  // const age1 = age;

  const age2 = 10;
  final age3 = age2;
  print(age3);

  final age4 = 15;

  print(age4);

  // dart inferring data type automatically
}
