void main(List<String> args) {
  // Type Promotion
// type  promotion means promoting less precise value to more precise value.

  final double age = 30;

  print(age);

  // final int age1 = 30.5; // we get error here. we have to do special conversion here to solve the error

  // int is less precise than double so that's why we are getting error here.
}
