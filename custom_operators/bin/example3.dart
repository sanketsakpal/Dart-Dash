void main(List<String> args) {
  // Addition of Two Optional Integers

  int? value = 20;
  int? value1 = 30;

  final result = value + value1;

  print(result);

  print(add());
  print(add(1, null));
  print(add(null, null));
  print(add(10, null));
  print(add(10, 20));
}

int? add([int? a, int? b]) {
  return a + b;
}

extension NullableAdd<T extends num> on T? {
  T? operator +(T? other) {
    // we  are creting this beacuse dart type promotion is not work well in extension
    final thisShadow = this;
//  login want to implement

// if this Is null as other == null, return this I if this
    if (this != null && other == null) {
      return this as T;
    }
//this == null &6 other != null, return other
    else if (this == null && other != null) {
      return other;
    }
    // if this == null &§ other == null, return 0

    else if (this == null && other == null) {
      return 0 as T;
    }
//  if this != null so other Is null, return this + other

    // else {
    //   return this + other as T;
// here dart could not promote this keyword to non null value this is why we are getting error
    //   //  (this as T) + (other as T) as T;
    // }

    else if (thisShadow != null && other != null) {
      return thisShadow + other as T;
    }
    // case where both are null
    else {
      return 0 as T;
    }
// actual what dart does is this

    // if (thisShadow == null || other == null) {
    //   return null;
    // } else {
    //   return thisShadow + other as T;
    // }
  }
}
