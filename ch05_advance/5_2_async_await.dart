import 'dart:io';

main(List<String> args) {
  asyncDemo();
  doComplexJob();
  print('Other process...');

  // only item is stream
  //await for (var item in streams) {
  //  //network http
  //  //upload big file
  //  //download file
  //}
}

void asyncDemo() {
  print('Process Start: ' + new DateTime.now().toString());
  sleep(new Duration(seconds: 2));
  print('Process End: ' + new DateTime.now().toString());
  print('Send email report...');
}

void doComplexJob() async {
  print('Process Start: ' + new DateTime.now().toString());
  print(await new Future.delayed(Duration(seconds: 2),
      () => 'Process End: ' + new DateTime.now().toString()));
  print('Send email report...');
}

Future<String> printStr() async => "result";
