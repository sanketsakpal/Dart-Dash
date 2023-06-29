void main(List<String> args) {
  // Force Unwrapping
  final String? firstName = null;
  // final foo = firstName!;
  // print(firstName!); // here we are forcing string firstName by using ! this null check operator, if we print this then we get
  // exception of null check operator used on null value because first name is null and we are forcing that by using ! this operator
// we can solve this this by using  by using null handle operators
  print(firstName ?? "no name found");
}
