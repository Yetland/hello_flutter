main(List<String> args) {
  listCollections();
  setCollections();
  mapCollections();
  doStuff();
}

listCollections() {
  var foo = const [];
  final finalFoo = const [1, 2, 3];
  foo = [1, 2, 3, 4];
  print(foo);
  print(finalFoo);
  foo = [1, 2, 3, 4, 5];
  print(foo);
}

setCollections() {
  var s = {1, 2, 3, 4, 4, 4, 4};
  print(s);
}

mapCollections() {
  const finalMap = {1: 2341, 2: 3414, '124': 2431};
  var map = Map();
  var map2 = {1: 124, 2: 12341234};
  map[1] = 234;
  map[234] = 12341;
  map['222'] = 2414;
  print(map);
  print(map[1]);
  print(map[2341]);
  print(map2);
  print(finalMap);
  testFun(true);
  testFun(true, 'hehe');
  testFun2(hello: true, option: '111');
  testFun2(hello: true);
  testFun3(true, hello: true, option: '111');
  testFun3(true, option: '111');
}

testFun(bool hello, [String option]) {
  print('testFun : hello = $hello , option = $option');
}

testFun2({bool hello = false, String option = 'default'}) {
  print('testFun2 : hello = $hello , option = $option');
}

testFun3(bool a, {bool hello = false, String option}) {
  print('testFun3 : a = $a , hello = $hello , option = $option');
}

void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}
