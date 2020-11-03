class printTriangle<T> {
  void printUseChar(T char) {
    for (var i = 0; i < 5; i++) {
      int j = 0;
      var str = "";
      for (j = 0; j < 2 * i + 1; j++) {
        str += char as String;
      }
      print(str);
    }
  }
}

class printTriangle2<T extends String> {
  void printUseChar(T char) {
    for (var i = 0; i < 5; i++) {
      int j = 0;
      var str = "";
      for (j = 0; j < 2 * i + 1; j++) {
        str += char;
      }
      print(str);
    }
  }
}

class printTriangle3<T extends String> {
  T printUseChar(T char) {
    var str = "";
    for (var i = 0; i < 5; i++) {
      int j = 0;
      for (j = 0; j < 2 * i + 1; j++) {
        str += char;
      }
      str += "\n";
    }
    return str;
  }
}
