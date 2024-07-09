void main() {
  //Q-1 Create a list of names and print all names using list.

  List names = ["SHaheer", "Ahmed", "Ali", "Akmal"];
  print(names);

  //Q-2 Create an empty list of type string called days. Use the add method to add names of 7
  //days and print all days.

  List<String> days = [];
  days.add("Monday");
  days.add("Tuesday");
  days.add("Wednesday");
  days.add("Thursday");
  days.add("Friday");
  days.add("Saturday");
  days.add("Sunday");

  print(days);

  //Q-3 Create a list of Days and remove one by one from the end of list.

  days.removeAt(days.length - 1);
  print(days);
  // OR
  days.removeLast();
  print(days);

  //Q-4 Create a list of numbers & write a program to get the smallest & greatest number from a
  //list.

  List<int> numbers = [1, 43, 78, 23, 98, 2, 01, 5, 56, 82, 76, 50];
  int smaller =
      numbers.reduce((value, element) => value < element ? value : element);
  int greater =
      numbers.reduce((value, element) => value > element ? value : element);

  print("The Greater is $greater & Smaller is $smaller");

  //OR
  numbers.sort();
  int greatest = numbers[numbers.length - 1];
  int smallest = numbers[0];
  print("The Smaller number is $smallest & Greater is $greatest");

  //Q-5 Create a map with name, phone keys and store some values to it. Use where to find all
  //keys that have length 4.

  Map record = {"Name": "Shaheer", "Phone": 03180267479};

  print(record.keys.where((element) => element.length == 4));

  //Q-6 Create Map variable name world then inside it create countries Map, Key will be the name
  //country & country value will have another map having capitalCity, currency and language to it.
  //by using any country key print all the value of Capital & Currency.

  Map<String, Map<String, String>> world = {
    "USA": {
      "Capital City": "Washington",
      "Currency": "Dollar",
      "Language": "English",
    },
    "Pakistan": {
      "Capital City": "Islamabad",
      "Currency": "PKR",
      "Language": "Urdu",
    },
    "India": {
      "Capital City": "Delhi",
      "Currency": "INR",
      "Language": "Hindi",
    },
  };

  print(world["India"]);

  //Map<String, double> expenses = {
  //'sun': 3000.0, 'mon': 3000.0, 'tue': 3234.0,
  //};
  //Q-7 Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to
  //expenses and set its value to 5000.0 then print expenses.

  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  print(expenses);
  if (expenses.keys.contains('fri')) {
    expenses['fri'] = 5000.0;
  } else {
    expenses.putIfAbsent('fri', () => 5000.0);
  }
  print(expenses);

  //Q-8 remove all false values from below list by using removeWhere or retainWhere property.
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false}
  ];

  usersEligibility.forEach(
    (element) => element.removeWhere((key, value) => value == false),
  );
  print(usersEligibility);

  //Q-9 Given a list of integers, write a dart code that returns the maximum value from the list.

  List<int> number = [1, 43, 78, 23, 98, 2, 01, 5, 56, 82, 76, 50];
  int maximum =
      number.reduce((value, element) => value > element ? value : element);
  print(maximum);

  //Q-10 Write a Dart code that takes in a list of strings and removes any duplicate elements,
  //returning a new list without duplicates. The order of elements in the new list should be the same
  //as in the original list.

  List records = ["Shaheer", "Ahmed", "Ali", "Asad", "Ahmed", "Asad", "Saad"];
  Set named = Set.of(records);
  print(named);
  records = List.of(records);

  //Q-11 Write a Dart code that takes in a list and an integer n as parameters. The program should
  //print a new list containing the first n elements from the original list.

  List _numbers = [1, 6, 6, 8, 9, 3, 2, 7, 4];
  List num_ber = [];
  for (var i = 0; i < _numbers.length - 5; i++) {
    num_ber.add(_numbers[i]);
  }
  print(num_ber);

  //Q-12 Write a Dart code that takes in a list of strings and prints a new list with the elements in
  //reverse order. The original list should remain unchanged.

  List _strings = ["Shaheer", "Ahmed", "Ali", "Asad", "Ahmed", "Asad", "Saad"];
  List reversed = [];
  for (var i = _strings.length - 1; i >= 0; i--) {
    reversed.add(_strings[i]);
  }
  print(reversed);

  //Q-13 Implement a code that takes in a list of integers and returns a new list containing only the
  //unique elements from the original list. The order of elements in the new list should be the same
  //as in the original list.

  List _numbers_ = [1, 6, 6, 8, 9, 3, 2, 7, 4];
  List unique = [];
  Set _unique = Set.of(_numbers_);
  unique = List.of(_unique);
  print(unique);

  //Q-14 Write a Dart code that takes in a list of integers and prints a new list with the elements
  //sorted in ascending order. The original list should remain unchanged.

  _numbers_ = [1, 6, 6, 8, 9, 3, 2, 7, 4];
  _numbers_.sort();
  print(_numbers_);

  //Q-15 Implement a Dart code that uses the where() method to filter out negative numbers from a
  //list of integers. The program should take in the original list as a parameter and print a new list
  //containing only the positive numbers.

  _numbers_ = [1, 6, 6, 8, 9, 3, 2, 7, 4, -1, -8, -54];
  List positive = [];
  for (var i = 0; i <= _numbers_.length - 1; i++) {
    if (_numbers_[i] > 0) {
      positive.add(_numbers_[i]);
    }
  }
  print(_numbers_);
  print(positive);

  //Q-16 Implement a Dart code that uses the where() method to filter out odd numbers from a list
  // of integers. The program should take in the original list as a parameter and print a new list
  // containing only the even numbers.

  _numbers_ = [1, 6, 6, 8, 9, 3, 2, 7, 4, -1, -8, -54];
  List even = [];
  for (var i = 0; i <= _numbers_.length - 1; i++) {
    if (_numbers_[i] % 2 == 0) {
      even.add(_numbers_[i]);
    }
  }
  print(_numbers_);
  print(even);

  //Given a list of integers, write a Dart code that uses the map() method to create a new list
  // with each value squared. The program should take in the original list as a parameter and print
  // the new list.

  _numbers_ = [1, 6, 6, 8, 9, 3, 2, 7, 4, -1, -8, -54];
  List square = [];
  square = List.of(_numbers_.map((e) => e * e));
  print(square);

  //Q-18 Create a map named "person" with the following key-value pairs: "name" as "John", "age"
  // as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18
  // years old. Print "Eligible" if both conditions are true, otherwise print "Not eligible".

  Map person = {"Name": "John", "Age": 15, "isstudent": true};

  if (person["Age"] > 18 && person["isstudent"] == true) {
    print("Eligible");
  } else {
    print("Not Eligible");
  }

  // Q-19 Given a map representing a product with keys "name", "price", and "quantity", write Dart
  // code to check if the product is in stock. If the quantity is greater than 0, print "In stock",
  // otherwise print "Out of stock".

  

}
