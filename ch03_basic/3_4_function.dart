main(List<String> args) {
  print("======3.4======");

  print(getDouble().toString());

  newFriend("Yang Po", 28);

  print(getPrice());

  print(sayWelcome("侯哥"));
  print(sayWelcome());
  print(sayWelcome2());

  scopeTest();

  print(leftSide() == rightSide());

  /*
  var result = returnDefault()??"NULL";
  if (result != null) {
    print("null");
  } else {
    print("Not null");
  }
  */
}

// 3.4.7 return value
void returnDefault() {
  var result = "hahaha";
  print("$result");
}

// 3.4.6 check result equal
int leftSide() {
  return 2 + 3;
}

int rightSide() {
  return 3 + 2;
}

// 3.4.5 Closure
Function newFriend_2(String name, var age) {
  print("I have a new friend: $name, age is $age");
}

// 3.4.4 scope
void scopeTest() {
  var scope_a = 1;
  print("A:" + scope_a.toString());
  void scopeTestInner() {
    var scope_b = 2;
    print("B:" + scope_b.toString());
    scope_a = 3;
    print("B:" + scope_a.toString());
  }

  scopeTestInner(); // to print scope B

  print("A:" + scope_a.toString());
  //print("A:" + scope_b.toString());
}

// 3.4.3 main

// 3.4.2 parameter
newFriend(String name, var age) {
  print("I have a new friend: $name, age is $age");
}

double getPrice({bookName: "非热门图书"}) {
  if (bookName == "Dart编程入门") {
    return 78.5;
  } else {
    return 50.0;
  }
}

String sayWelcome([String name]) {
  return "$name, 欢迎您的使用";
}

String sayWelcome2([String name = "您好"]) {
  return "$name, 欢迎您的使用";
}

// 3.4.1 function
int getNumber() {
  return 150;
}

double getDouble() => 1.5 * getNumber();
