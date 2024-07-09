void main(List<String> args) {
  Student Shaheer = Student("Flutter", "Ahmed", "FA20");
  print("----");
  Student Ahmed = Student("Flutter", "Shaheer");
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

  

}
