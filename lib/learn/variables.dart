main(List<String> args) {
  varList();
  constFun();
  numbers();
  assert(1 == 2);
  forFun();
}

void varList() {
  var foo = const [];
  final finalFoo = const [1, 2, 3];
  foo = [1, 2, 3, 4];
  print(foo);
  print(finalFoo);
  foo = [1, 2, 3, 4, 5];
  print(foo);
}

void constFun() {
  const Object i = 3; // Where i is a const Object with an int value...
  const list = [i as int]; // Use a typecast.
  const map = {if (i is int) i: "int"}; // Use is and collection if.
  const set = {if (list is List<int>) ...list}; // ...and a spread.
  print(i);
  print(list);
  print(map);
  print(set);
}

int numbers() {
  // String -> int
  var one = int.parse('1');
  assert(one == 2);

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString();
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2);
  assert(piAsString == '3.14');
  print('one = $one , onePointOne = $onePointOne');
  return 1;
}

void forFun() {
  var list = [1, 2, 3, 4, 5];
  var listOfStrings = [
    '#0',
    for (var i in list) {'#$i'}
  ];
  print(list);
  print(listOfStrings);
  setFun();
}

void setFun() {
  var s = <String>{};
  s = {'1', '2'};
  print(s);
  assignment();
}

assignment() {
  var a = '111';
  var b = '222';
  a ??= b;
  print('a = $a');
  print('b = $b');
  var aaa = A();
  print(aaa.pri());
  print(C().p());
}

class A {
  var sets = <String>{'1', '2'};
  var b = B(111);

  pri() {
    b.p();
  }
}

class B {
  final _a;
  B(this._a);
  p() {
    print(_a);
  }
}

typedef Compare = int Function(Object a, Object b);

class C implements B {
  static int x = 1;
  static const int y = 2;
  final int z = 3;
  var xx = 1;

  hello(Compare compare) {
    return compare(333, 1);
  }

  int sort(Object a, Object b) {
    print('a = $a , b = $b');
    if (a is int && b is int) {
      print('is int ');
      return a + b;
    } else {
      print('is not int ');
      return 1;
    }
  }

  @override
  get _a => null;

  @override
  p() {
    print('aaaa = ' + hello(sort).toString());

    print(x);
    x = 11;
    print(x);
    print("i am C");
  }
}
