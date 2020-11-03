main(List<String> args) {
  print("======3.6.6 assert======");
  var intVal = 100;
  assert(intVal == 199);
  print("======3.6.5======");
  var name = '二狗子';
  switch (name) {
    case "熊大":
      print("光头强又来砍树啦");
      break;
    case "二狗子":
      print("永远的狗子");
      break;
    case "三毛":
      print("说好一起到白头，你却偷偷焗了油");
      break;
    case "赵四":
    default:
      print("俺不认识你，泥奏凯");
      break;
  }
  print("======3.6.4======");
  var j = 0;
  for (j = 27; j < 100; j++) {
    if (j % 26 == 0) {
      break;
    }
  }
  print(j);
  for (j = 0; j < 100; j++) {
    if (j % 10 != 0) {
      continue;
    }
    print(j);
  }
  print("======3.6.3======");
  var i = 0;
  while (i < 10) {
    i++;
  }
  print(i);

  i = 10;
  do {
    i--;
  } while (i > 0);
  print(i);
  print("======3.6.2======");
  var names = ['熊大', '二狗子', '三毛'];
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }
  Set setVal = {'熊大', '二狗子', '三毛', 123, 4.56};
  for (var val in setVal) {
    print(val);
  }
  print("======3.6.1======");
  var volumeLevel = 7;
  if (volumeLevel < 0) {
    print("Invalid volumne level.");
  } else if (volumeLevel < 3) {
    print("Low volumne level.");
  } else if (volumeLevel < 7) {
    print("Medium volumne level.");
  } else if (volumeLevel <= 10) {
    print("High volumne level.");
  }
}
