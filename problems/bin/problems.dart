// we have to find secound highest number from this list with out useing default
// functions of dart
// ans : - 23
void main() {
  var today = DateTime.now();
  print(today.next(DateTime.monday).weekday == DateTime.monday);

  DateTime currentDate = DateTime.now();
  DateTime nextMonday =
      currentDate.next(1); // Calculate the next Monday from today
  print(nextMonday);

  List lst = [6, 5, 9, 8, 1];

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
