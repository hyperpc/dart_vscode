main(List<String> args) {
  perfectNumber();
  //getSum();
  //sortArray();
}

void perfectNumber() {
  for (int i = 2; i < 10000; i++) {
    int sum = 0;
    for (int j = 1; j < i; j++) {
      if (i % j == 0) {
        sum += j;
      }
    }
    if (sum == i) {
      print(i);
    }
  }
}

void getSum() {
  var sum = 0;
  var i = 1;
  while (i < 200) {
    if (i % 3 == 0) {
      sum += i;
    }
    i++;
  }
  print(sum);
}

void sortArray() {
  var intArray = [25, 32, 13, 48];
  print(intArray);
  for (int i = 0; i < intArray.length - 1; i++) {
    for (int j = 0; j < intArray.length - i - 1; j++) {
      if (intArray[j] < intArray[j + 1]) {
        int temp = intArray[j];
        intArray[j] = intArray[j + 1];
        intArray[j + 1] = temp;
        print("i=$i, j=$j");
        print(intArray);
      }
    }
  }
}
