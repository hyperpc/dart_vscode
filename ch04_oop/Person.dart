class Person {
  static var notice = "only for test static";
  var name;
  var age;
  var gender;
  // construct 1
  Person(var name, var age) {
    this.name = name;
    this.age = age;
  }

  // construct 2
  Person.Self(this.name, this.age, this.gender);

  Person.withoutAge(var name, var gender)
      : this.name = name,
        this.gender = gender {
    print(this.name);
    print(this.gender);
  }

  Person.easyGender(var name, var age, var gender)
      : this.Self(name, age, gender == 0 ? "male" : "female");

  @override
  String toString() {
    return "name: $name, age: $age";
  }

  String toSelfString() {
    return "name: $name, age: $age, gender: $gender";
  }

  String get getAgeGrade {
    var ageGrade;
    if (age < 0) {
      ageGrade = "Invalid age";
    } else if (age < 44) {
      ageGrade = "Young person";
    } else if (age < 59) {
      ageGrade = "Mature person";
    } else if (age < 74) {
      ageGrade = "Young Old person";
    } else if (age < 89) {
      ageGrade = "Old person";
    } else {
      ageGrade = "Long live person";
    }
    return ageGrade;
  }
}

class Student extends Person {
  Student.Self(var name, var age, var gender) : super.Self(name, age, gender) {
    print("I'm a student, $age years old.");
  }
}

class MySelf {
  final String name;
  final num age;
  const MySelf(this.name, this.age);
  static final MySelf me = const MySelf('Yang Po', 28);
  @override
  String toString() {
    return "name: $name, age: $age";
  }
}

class Person_2 {
  final String name;
  static final Map<String, Person_2> _cache = new Map<String, Person_2>();
  factory Person_2(String name) {
    if (!_cache.containsKey(name)) {
      final person = new Person_2.newPerson(name);
      _cache[name] = person;
    }
    return _cache[name];
  }
  Person_2.newPerson(this.name);
  void say(String msg) {
    print(msg + " " + this.name);
  }

  static String readme() {
    return "this is a static function in class";
  }
}
