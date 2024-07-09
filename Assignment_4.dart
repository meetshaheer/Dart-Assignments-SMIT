void main(List<String> args) {
  Student Shaheer = Student("Flutter", "Ahmed", "FA20");
  print("----");
  Student Ahmed = Student("Flutter", "Shaheer");

  Mobile Samsung = Mobile("HW-p20", "Android", Display: "16 inch");
  Mobile Iphone_11 = Mobile("11", "Ios");

}

class Student {
  String? name;
  String? ID;
  int? age;
  String? Address;
  String course;
  String? timing;

  Student(this.course, [this.name, this.ID]) {
    print(course);
    print(name);
    print(ID);
  }
}

class Mobile {
  String? Model;
  String? Display;
  double? Android_version;
  String? Type;

  Mobile(this.Model, this.Type, {this.Display});
}
