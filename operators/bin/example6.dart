void main(List<String> args) {
  // Compound Assignment Operators

  var myAge = 50;
  print(myAge = 30);
  print(myAge ~/= 2); // ~/= computes the value and assign to it ,
  const myAge1 = 30;
  print(myAge1 ~/ 2); //  ~/ this one is compute the value but not assign to it

  print(myAge *= 2);
  print(myAge += 4);
  print(myAge &= 2);
  print(myAge |= 2);
  print(myAge ^= 2);
  print(myAge -= 2);
}
