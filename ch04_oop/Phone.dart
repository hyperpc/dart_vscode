abstract class Phone {
  var screenSize;
  var weight;
  var timePulished;
  var model;
  var systemVersion;

  /*
  void Call(var number) {
    print("Call to: $number");
  }
  */
  void Call(var number);

  void Sms(var number, var msg) {
    print("SMS to: $number, content is: $msg");
  }
}

class GetBrand {
  void Brand(var brandStr) {
    print('Phone\'s brand: $brandStr');
  }
}

//Mixin
class BackgroundApp {
  void bringMeBack(var appName) {
    print('$appName stay background and keep running');
  }
}

class iPhone extends Phone implements GetBrand {
  @override
  String toString() {
    return "iPhone model: $model";
  }

  @override
  void Call(var number) {
    //super.Call(number);
    print("Call to: $number");
    print("--from iPhone: $model");
  }

  @override
  void Sms(var number, var msg) {
    super.Sms(number, msg);
    print("--from iPhone: $model");
  }

  @override
  void Brand(var brandStr) {
    print('This is $brandStr phone');
  }
}

class Android extends Phone with BackgroundApp implements GetBrand {
  var brand;
  @override
  String toString() {
    return "$brand model: $model";
  }

  @override
  void Call(var number) {
    //super.Call(number);
    print("Call to: $number");
    print("--from $brand: $model");
  }

  @override
  void Sms(var number, var msg) {
    super.Sms(number, msg);
    print("--from $brand: $model");
  }

  @override
  void Brand(var brandStr) {
    print('This is Android phone');
  }
}

enum AndroidBrand { Samsung, Huawei, Xiaomi, Oppo, Vivo }
