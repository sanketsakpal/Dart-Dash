// dart create -t console variables_and_data_types
// to create dart project run above command
void main(List<String> args) {
  const name = 'foo';
  print("-- const ex : - $name--");

  // any modification to constant variables not allowed.

  // invalid code
  // name = 'bar';

  final age = 30;
  print("-- final ex : - $age");

  const age1 = [1, 2, 3];
  print(age1);
  // age1 = [1,2,4]; // can not assign value  at compile time
  age1.remove(
      0); // this code is compilable but throws the exception at run time
  //we also not change the value of const variables it's not giving error at compile time but it give it at run time.

  print(
      age1); // we get exception here because we Cannot remove from an unmodifiable list
  // it would not allow in compile time we get exception at runtime

  // we can not assign value as well as can not change the value of const or unmodifiable variables.
}
