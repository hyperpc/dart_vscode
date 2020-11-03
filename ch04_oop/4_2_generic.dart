import 'printTriangle.dart';

main(List<String> args) {
  // exception when print number
  var print1 = new printTriangle();
  print1.printUseChar('*');
  print1.printUseChar('+');

  // limit T is subtype of String, to avoid above exception
  var print2 = new printTriangle2();
  print2.printUseChar('*');
  print2.printUseChar('+');

  // generic function
  var print3 = new printTriangle3();
  print(print3.printUseChar("@"));
}
