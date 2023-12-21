void main(List<String> args) {
  String test = "hello";
  // String reverse = reverseString(test);
  // print(reverse);
  reverseString2(test);
  String originalString = "Hello, World!";
  String reversed = reverseString(originalString);

  print('Original String: $originalString');
  print('Reversed String: $reversed');
}

String reverseString(String input) {
  String reversed = '';
  for (int i = input.length - 1; i >= 0; i--) {
    reversed = reversed + input[i];
  }
  return reversed;
}

String reverseString2(String input) {
  // Convert the string to a list of characters
  List<String> characters = input.split('');

  // Get the length of the string
  int length = characters.length;

  // Use a for loop to reverse the list in-place
  for (int i = 0; i < length ~/ 2; i++) {
    // Swap characters at positions i and length - 1 - i
    String temp = characters[i];
    characters[i] = characters[length - 1 - i];
    characters[length - 1 - i] = temp;
  }

  // Join the reversed characters to form the reversed string
  String reversedString = characters.join('');

  return reversedString;
}
