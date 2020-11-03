main(List<String> args) {
  print("======3.2======");
  var name = "David";
  print(name);

  var nullTest;
  print(nullTest);

  var price = 1;
  print("Unit Price is: " + price.toString() + " dollar.");
  final buyTen = price * 10;
  //const buyTwo = price * 2;  // err: const should be a constant value
  const buyTwo = 2;
  print("Buy 10 products, need pay " + buyTen.toString() + " dollars.");
  print("Buy 2 products, need pay " + buyTwo.toString() + " dollars.");

  var intList = const [];
  intList = [1, 2, 3];
  print(intList);

  const temp = [];
  var intList_2 = temp;
  intList_2 = [1, 2, 3];
  //temp = [1, 2, 3]; // err: const list should be a constant array
  print(intList_2);
}
