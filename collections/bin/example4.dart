void main(List<String> args) {
  // map
  final info = {
    "name": "sd",
    "age": 10,
  };
  info['name'] = "sanket";
  print(info.keys);
  print(info['name']);

  info.putIfAbsent('height', () => 165);
  print(info);

  // iterate thruogh map

  for (var element in info.entries) {
    print(element.key);
    print(element.value);
  }

  if (info.containsKey('height')) {
    print("height ${info['height']}");
  } else {
    print("not found");
  }

  // if trying to find value not available in map then we get null
  print("height ${info['weight']}");

  final mapWithIntKey = {
    10: 20,
    20: 89,
  };

  print(mapWithIntKey);
}
