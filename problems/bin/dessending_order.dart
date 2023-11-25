void main(List<String> args) {
  print(sortedArray);
  print("------------------------");
  bubbleSort2(array1);
  print("------------------------");
}

List<int> array = [5, 0, 1, 4, 2, 8];
List<int> array1 = [5, 0, 1, 4, 2, 8];
int smallest = array1[0];

bubbleSort2(List<int> array) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] > smallest) {
      print(array[i]);
    }
  }
}

List<int> sortedArray = bubbleSort(array);

bubbleSort(List<int> array) {
  int lengthOfArray = array.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      print("${array[j]} ${array[j + 1]}");
      if (array[j] < array[j + 1]) {
        // Swapping using temporary variable
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return array;
}
// 0 
