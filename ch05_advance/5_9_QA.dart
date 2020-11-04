main(List<String> args) {
  print("Start Process at " + new DateTime.now().toString());
  MyAsyncProcess();
  print("End Process at " + new DateTime.now().toString());

  // todo: using Stream<T>
}

void MyAsyncProcess() {
  for (var i = 0; i < 3; i++) {
    new Future.sync(() => FirstJob()).then((_) => SecondJob());
  }
}

void FirstJob() {
  print('Start FirstJob');
  Duration interval = Duration(seconds: 2);
  for (int i = 1; i <= 3; i++) {
    new Future.delayed(interval, () => print("FirstJob: $i"));
  }
  print('End FirstJob');
}

void SecondJob() {
  print('Start SecondJob');
  Duration interval = Duration(seconds: 1);
  for (int i = 1; i <= 5; i++) {
    new Future.delayed(interval, () => print("SecondJob: $i"));
  }
  print('End SecondJob');
}
