void main(List<String> args) {
  // mutated means change.
  // vanilla variables, just a variable that can be reassign value and also can be change the internal value

  var address = '123 go right';

  print(address);

  address = '245 go left';

  print(address);

  address = address.replaceAll('go', 'front');

  print(address);
}
