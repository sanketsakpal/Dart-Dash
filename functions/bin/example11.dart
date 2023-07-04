void main(List<String> args) {
  // Positional Parameters

  // positional parameter are pass in order
  // they don't have name associate with them
  // they are always required and not have default value

  sayGoodByTo("foo", "bar");

  // sayGoodByTo(); // invalid
  //  sayGoodByTo("foo");//invalid
}

void sayGoodByTo(String person, String anotherPerson) {
  print('Goodbye, $person and $anotherPerson!');
}
