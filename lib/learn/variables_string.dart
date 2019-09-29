main(List<String> args) {
  var varName = 'var bob';
  dynamic dName = 'dynamic bob';
  const constName = 'const bob';
  final finalName = 'final bob';
  // 未经处理的string,\n不会被转义
  var rowString = r'In a raw string, not even \n gets special treatment.';
  var _rowString = 'In a raw string, not even \n gets special treatment.';
  print(varName);
  print(dName);
  print(constName);
  print(finalName);
  print(rowString);
  print(_rowString);
}
