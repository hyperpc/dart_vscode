main(List<String> args) {
  print("======3.7.2======");
  finallyBlock();
  //catchMultErr();
  //catchRangeErr();
  //rangeErr();
  print("======3.7.1======");
  //throwFormatEx();
  //throwCustomEx();
}

void finallyBlock() {
  var intArray = [10, 20, 30, 40];
  try {
    print(intArray[4]);
  } on RangeError {
    print(intArray[3]);
    rethrow;
  } on FormatException {
    print("Format exception");
  } catch (e) {
    print(e.toString());
  } finally {
    print("Completed!!!");
  }
}

void catchMultErr() {
  var intArray = [10, 20, 30, 40];
  try {
    print(intArray[4]);
  } on RangeError {
    print(intArray[3]);
    rethrow;
  } on FormatException {
    print("Format exception");
  } catch (e) {
    print(e.toString());
  }
}

void catchRangeErr() {
  var intArray = [10, 20, 30, 40];
  try {
    print(intArray[4]);
  } catch (e) {
    print(e.toString());
    print(intArray[3]);
  }
}

void rangeErr() {
  var intArray = [10, 20, 30, 40];
  print(intArray[4]);
}

void throwCustomEx() {
  throw "My Custome Exception";
}

void throwFormatEx() {
  throw new FormatException("Data format exception occurred");
}
