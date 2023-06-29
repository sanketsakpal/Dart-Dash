void main(List<String> args) {
  //combining null aware operators

  final String? lastName;
  lastName = null;
  print(lastName ?? "sanket");

  // Extending Optional Types

  String? getFullNameOptional() {
    return 'foo bar';
  }

  String getFullName() {
    return 'foo ';
  }

  final fullName = getFullNameOptional() ?? getFullName();
  print(fullName);

  final someName = getFullNameOptional();
  someName.describe();

  //  Unwrapping Multiple Optionals

  String getFullNames(
    String? firstName,
    String? lastName,
  ) =>
      withAll([firstName, lastName], (name) => name.join(' ')) ?? 'empty';

  print(getFullNames("sanket", null));
  print(getFullNames("sanket", "sakpal"));

  // - Optional FlatMap

  // flat map in unwrapping and mapping an option value

  String? name = "jho";
  String? surName = "doe";

  final fName = name.flatMap(
        (f) => surName.flatMap(
          (l) => '$f $l',
        ),
      ) ??
      "either fullname or last name is null or both are null ";

  print(fName);

  // Default Values for Optionals

  String fullNames(String? fName, String? lName) =>
      "${fName.orDefault} ${lName.orDefault}";

  print(fullNames(null, null));
}

extension Describe on Object? {
  void describe() {
    if (this == null) {
      print("this objects is null");
    } else {
      print("$runtimeType : $this");
    }
  }
}

// multiple option value

T? withAll<T>(List<T?> optionals, T Function(List<T>) callBack) =>
    optionals.any((element) => element == null)
        ? null
        : callBack(optionals.cast<T>());

extension FlatMap<T> on T? {
  R? flatMap<R>(
    R? Function(T) callBack,
  ) {
    final shadow = this;
    if (shadow == null) {
      return null;
    } else {
      return callBack(shadow);
    }
  }
}

extension DefaultValue<T> on T? {
  T get orDefault {
    final shadow = this;
    if (shadow != null) {
      return shadow;
    }
    switch (T) {
      case int:
        return 0 as T;

      case double:
        return 0.0 as T;
      case String:
        return "X" as T;
      case bool:
        return false as T;
      default:
        throw Exception("No default value for type $T");
    }
  }
}
