main(List<String> args) {
  print("======3.3======");
  double number = 1;
  print(number);

  var str1 = 'I\'m Yang Po';
  print(str1);
  var str2 = "I'm \"Yang Po\"";
  print(str2);

  var f_name = "侯先生";
  final welcome = "$f_name, 早上好！";
  print(welcome);

  print(str1 == str2);
  print("abc" == "abc");
  print("A\nB\nC");
  print("""A
B
C""");

  var toIntStr = "1000";
  print(int.parse(toIntStr));

  var listExp = [1, 2, 3];
  print(listExp);

  var listExp2 = [1, "Hello", 3.14];
  print(listExp2);
  print("length of list: " + listExp2.length.toString());
  print("list[0]=" + listExp2[0].toString());
  print("list[1]=" + listExp2[1]);
  print("list[2]=" + listExp2.last.toString());

  var setExp = {'Alice', 'Bob', 'Cindy', 'David'};
  print(setExp);
  Set setExp2 = {'Alice', 'Bob', 'Cindy', 'David', 1, 2, 3.14, 8.0};
  print(setExp2);
  setExp2.add('Evi');
  setExp2.add('Alice');
  setExp2.remove('David');
  setExp2.remove(1);
  print(setExp2);
  print(setExp2.contains(8.0));
  print(setExp2.contains(8));
  print(setExp2.contains('Fiona'));
  setExp2.clear();
  print(setExp2);
  setExp2 = new Set.from(setExp);
  print(setExp2);
  setExp2.removeAll(setExp);
  print(setExp2);
  setExp2.addAll(setExp);
  print(setExp2.contains('Alice'));
  print(setExp2.containsAll({'Alice', 'Bob', 'Cindy', 'David'}));
  print(
      setExp2.containsAll({'Alice', 'Bob', 'Cindy', 'David', 1, 2, 3.14, 8.0}));

  var gifts = {'小明': '书', '小白': '书包', '小花': '手表'};
  print(gifts);
  gifts['小花'] = '玩具';
  print(gifts);
  gifts['小华'] = '手表';
  print(gifts);
  gifts['小花'] = '儿童手表';
  print(gifts);
  gifts.remove('小华');
  print(gifts);
  print(gifts.containsKey('小华'));
  print(gifts.containsKey('小花'));
  //Runes type :\uXXXX
  //Runes heart_logo = new Runes('\u2665');
  var heart_logo = "\u2665";
  print(heart_logo);
  //Runes happy_logo = new Runes('\u{1f47b}');
  var happy_logo = '\u{1f47b}';
  print(happy_logo);
}
