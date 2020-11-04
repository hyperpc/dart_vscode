main(List<String> args) {
  var client = new RunnableClass();
  print(client("calling another class..."));
}

class RunnableClass {
  call(var content) => "You input content: $content";
}
