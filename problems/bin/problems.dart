// we have to find secound highest number from this list with out useing default
// functions of dart
// ans : - 23
void main() {
  var today = DateTime.now();
  print(today.next(DateTime.monday).weekday == DateTime.monday);
  List<int> array = [5, 0, 1, 4, 2, 8];
  List<int> sortedarray = bubbleSort(array);

  DateTime currentDate = DateTime.now();
  DateTime nextMonday =
      currentDate.next(1); // Calculate the next Monday from today
  print(nextMonday);

  print(sortedarray);

  List lst = [6, 5, 9, 8, 1];
  int a = lst[0];
  for (int i = 0; i < lst.length; i++) {
    if (lst[i] < a) {
      a = lst[i];
    }
  }

  List<Map<String, dynamic>> test = [];
  Map map = {};

  for (int i = 0; i < lst.length; i++) {
    if (lst[i] % 2 == 0) {
      test.add({
        "index": i,
        "value": lst[i],
      });

      map = {
        "test": test,
      };
    }
  }
  print("-------------$map-------------------");

  print('number is-->$a');

//   List<int> lst = [6, 5, 9, 8, 1];
// int smallest = lst[0];

// for (int i = 1; i < lst.length; i++) {
//   if (lst[i] < smallest) {
//     smallest = lst[i];
//   }
// }

// print('The smallest number is: $smallest');
}

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

extension DateTimeExtension on DateTime {
  DateTime next(int day) {
    if (day == weekday) {
      return add(Duration(days: 7));
    } else {
      return add(
        Duration(
          days: (day - weekday) % DateTime.daysPerWeek,
        ),
      );
    }
  }
}
