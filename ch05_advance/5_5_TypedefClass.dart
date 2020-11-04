typedef stringOutput = String Function(String content);
typedef intOutput = int Function(int number);
main(List<String> args) {
  TypedefClass classTest = new TypedefClass(output);
  TypedefClass classTest2 =
      new TypedefClass((content) => "You input content: $content");
  assert(classTest.exampleFunc is Function);
  assert(classTest.exampleFunc is stringOutput);
  assert(classTest2.exampleFunc is Function);
  assert(classTest2.exampleFunc is stringOutput);
  assert(classTest.exampleFunc is intOutput); // not pass
  assert(classTest2.exampleFunc is String); // not pass
}

class TypedefClass {
  Function exampleFunc;
  TypedefClass(String test(String content)) {
    exampleFunc = test;
  }
}

String output(String content) => "You input content: $content";
