void main(List<String> args) {
  // print(sortedarray);
  print("------------------------");
  bubbleSort2(array);
}

List<int> array = [5, 0, 1, 4, 2, 8];
int smallest = array[0];
List test = [];
// List<int> sortedarray = bubbleSort(array);

bubbleSort(List<int> array) {
  int lengthOfArray = array.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (array[j] < array[j + 1]) {
        // Swapping using temporary variable
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return (array);
}

bubbleSort2(List<int> array) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] > smallest) {
      print(array[i]);
    }
  }
  return (test);
}
