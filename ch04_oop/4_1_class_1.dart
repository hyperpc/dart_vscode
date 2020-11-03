import 'Person.dart';
import 'Phone.dart';
import 'Multi2ItemOperator.dart';

main(List<String> args) {
  // 4.1.1
  var person_internal = new Person_Internal('Bob', 18);
  print(person_internal.toString());
  var person = new Person('Bob', 19);
  print(person.toString());
  // 4.1.2
  if (person != null) {
    print(person.age);
  }
  person?.age = 20;
  print(person?.age);
  print(person.runtimeType);
  // 4.1.3
  print(person.getAgeGrade);
  // 4.1.4
  print(Person.notice);
  // 4.1.5
  var self = new Person.Self('young', 22, 'male');
  print(self.toSelfString());
  var student = new Student.Self('Robert', 13, 'Boy');
  if (student is Person) {
    student.name = 'Big Robert';
  }
  print(student.toString());

  var noageInfo = Person.withoutAge("Smith", "male");
  print(noageInfo.toString());

  var easyGenderInfo = Person.easyGender("Alice", 12, '1');
  print(easyGenderInfo.toSelfString());

  var who = MySelf.me;
  print(who.toString());

  var sayDavid = new Person_2('David');
  sayDavid.say('Hello');
  print(sayDavid.hashCode);
  var sayElan = new Person_2('Elan');
  sayElan.say('Hello');
  print(sayElan.hashCode);
  var sayDavid2 = new Person_2('David');
  // 4.1.6
  sayDavid2.say('Hello');
  // 4.1.7
  print(sayDavid2.hashCode);
  print(Person_2.readme());
  // 4.1.8, 4.1.10, 4.1.11
  var iPhone8 = new iPhone();
  iPhone8.model = "iphone 8";
  iPhone8.screenSize = 4.7;
  iPhone8.weight = 148;
  iPhone8.timePulished = "20170913";
  iPhone8.systemVersion = "iOS 11";
  print(iPhone8.toString());
  iPhone8.Call("12345");
  iPhone8.Sms("12345", "call you just now");

  var sumsungS8 = new Android();
  sumsungS8.brand = "Sumsung";
  sumsungS8.model = "S8";
  sumsungS8.screenSize = 5.8;
  sumsungS8.weight = 155;
  sumsungS8.timePulished = 20170327;
  sumsungS8.systemVersion = "Android 7.0";
  print(sumsungS8.toString());
  sumsungS8.Call("67890");
  sumsungS8.Sms("67890", "call you just now");

  //4.1.9
  var a = new Multi2ItemOperator(10, 20);
  var b = new Multi2ItemOperator(30, 40);
  var result = (a * b);
  print("x=" + result.x.toString() + ", y=" + result.y.toString());

  //4.1.12 implements
  iPhone8.Brand('iPhone');
  sumsungS8.Brand('Sumsung');
  //4.1.13 with
  sumsungS8.bringMeBack('Browser');

  //4.1.14 enum
  print(AndroidBrand.Samsung);
  print(AndroidBrand.Samsung.index);
  if ("Huawei" == AndroidBrand.Huawei) {
    print("This is Huawei");
  } else {
    print("This is not Huawei");
  }
}

class Person_Internal {
  var name;
  var age;
  Person_Internal(var name, var age) {
    this.name = name;
    this.age = age;
  }
  @override
  String toString() {
    return "name: $name, age: $age";
  }
}
