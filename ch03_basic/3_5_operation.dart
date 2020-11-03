main(List<String> args) {
  print("======3.5.8======");
  Point point = new Point();
  point.setX(10);
  point.setY(20);
  point.setZ(30);
  print(point.toString());
  print(new Point()
    ..setX(11)
    ..setY(21)
    ..setZ(31)
    ..toString());
  print("======3.5.7======");
  var condition = true;
  print(condition ? "Condition is true" : "Condition is not true");
  condition = null;
  print(condition ?? "Condition is null");
  print("======3.5.6======");
  var bitVal = 0x22;
  print(bitVal);
  var bitValMask = 0x0f;
  print(bitValMask);
  print(~bitVal);
  print((bitVal & bitValMask) == 0x02);
  print((bitVal | bitValMask) == 0x2f);
  print((bitVal ^ bitValMask) == 0x2d);
  print((bitVal << 4) == 0x220);
  print((bitVal >> 4) == 0x02);

  print("======3.5.5======");
  print(!true);
  print(true || false); //lazy compiler
  print(false || true);
  print(true && false);

  print("======3.5.4======");
  var val = 10;
  val += 5;
  print(val); //15
  val -= 2;
  print(val); //13

  val *= 2;
  print(val); //26
  var val_d = double.tryParse(val.toString());
  val_d /= 3;
  print(val_d); //8.6666666666
  val_d = double.tryParse(val.toString());
  val_d %= 3;
  print(val_d); //2.0
  val ~/= 3;
  print(val); // 8

  var val_1 = val; //------8
  val_1 >>= 2;
  print(val_1); //2
  var val_2 = val;
  val_2 <<= 2;
  print(val_2); //32
  var val_3 = val;
  val_3 ^= 2;
  print(val_3); // 10
  var val_4 = val;
  val_4 &= 0;
  print(val_4); // 0
  val_4 &= 10;
  print(val_4); // 0
  var val_5 = val;
  val_5 |= 0;
  print(val_5); // 8
  val_5 |= 10;
  print(val_5); // 10

  print("======3.5.3======");
  String strObj = "I'm string";
  print((strObj as Object).hashCode);
  int intObj = 100;
  print(intObj is int);
  print(intObj is! String);

  print("======3.5.2======");
  print((2 + 3) == (3 + 2));
  print((1 + 4) != (6 - 1));
  print((1 + 4) > (6 - 1));
  print((1 + 4) >= (6 - 1));
  print((1 + 4) < (6 - 1));
  print((1 + 4) <= (6 - 1));

  print("======3.5.1======");
  print(2 + 3);
  print(4 - 1);
  print(4 - 5);
  print(3 * 6);
  print(1 / 2);
  print(9 ~/ 2);
  print(9 % 2);
  print(-(1 - 4));

  var a = 1;
  print(++a);
  print(a);
  print(a++);
  print(a);
  print(--a);
  print(a);
  print(a--);
  print(a);

  print("======3.5======");

  print((1 % 2 == 1) || (2 % 3 == 1));
  print(1 % 2 == 1 || 2 % 3 == 1);
}

class Point {
  int x = 0;
  int y = 0;
  int z = 0;

  setX(int value) {
    x = value;
  }

  setY(int value) {
    y = value;
  }

  setZ(int value) {
    z = value;
  }

  @override
  String toString() {
    return "x=" + x.toString() + ", y=" + y.toString() + ", z=" + z.toString();
  }
}
