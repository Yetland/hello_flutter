typedef Plus = num Function(num a, num b);

main(List<String> args) {
  num result = testTypeDef(plus);
  print(result);
}

num plus(num a, num b) {
  return a + b;
}

testTypeDef(Plus plus) {
  return plus(1, 2);
}
