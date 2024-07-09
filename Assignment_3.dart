import 'dart:typed_data';
import 'dart:io';

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

  Map product0012 = {"Name": "Airpods", "Price": 2200, "Quantity": 220};
  if (product0012["Quantity"] > 0) {
    print("In Stock");
  } else {
    print("Out Of Stock");
  }

  //Q-20 Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color"
  // as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print
  // "Match" if both conditions are true, otherwise print "No match".

  Map<String, dynamic> car = {
    "Brand": "Toyota",
    "Color": "Red",
    "Issedan": false
  };

  if (car["Issedan"] && car["Color"] == "Red") {
    print("Match");
  } else {
    print("Not Match");
  }

  //Q-21 Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart
  // code to check if the user is an active admin. If the user is both an admin and active, print "Active
  // admin", otherwise print "Not an active admin".

  Map user = {"name": "Shaheer", "isadmin": true, "isactive": true};
  if (user["isadmin"] && user["isactive"]) {
    print("Active Admin");
  } else {
    print("Isnot Active Admin");
  }

  //Q-22 Given a map representing a shopping cart with keys as product names and values as
  // quantities, write Dart code to check if a product named "Apple" exists in the cart. Print "Product
  // found" if it exists, otherwise print "Product not found".

  Map shopping_cart = {"Apple": 2};

  if (shopping_cart.containsKey("Apple")) {
    print("Product in Cart");
  } else {
    print("Cart is Empty");
  }

  //Q-23 Consider the code:
  // List nameList = [Bilal, Bilal, Bilal, Huzaifa, Huzaifa, Huzaifa];
  // What can to be done in order to not repeat Bilal and Huzaifa multiple times?

  List nameList = ["Bilal", "Bilal", "Bilal", "Huzaifa", "Huzaifa", "Huzaifa"];
  Set norepeat = Set.of(nameList);
  List norepeate = List.of(norepeat);
  print(norepeate);

  //Q-24 Let’s say you are given a list saved in a variable:
  // Consider a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100].
  // Write a code that takes this list and makes a new list that has only the even elements of this list
  // in it.

  List a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List b = [];

  for (var element in a) {
    if (element % 2 == 0) {
      b.add(element);
    }
  }

  print(b);

  // Q-25 Write a program to print multiplication table of 7 length 15 using loop.

  for (var i = 0; i < 16; i++) {
    print("7 x $i = ${7 * i}");
  }

  // Q-26 Write a program to print items of the following array using for loop:
  List fruits = ["apple", "banana", "mango", "orange", "strawberry"];
  for (var i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }

  //Q-27 Write a program to print multiples of 5 ranging 1 to 100.

  for (var i = 5; i <= 100; i++) {
    if (i % 5 == 0) {
      print(i);
    }
  }

  //Q-28 The Temperature Converter: It’s hot out! Let’s make a converter based on the steps here.
  // a. Store a Celsius temperature into a variable.
  // b. Convert it to Fahrenheit & output “NNoC is NNoF”.
  // c. Now store a Fahrenheit temperature into a variable.
  // d. Convert it to Celsius & output “NNoF is NNoC”.
  // Note: NN = any number

  print("Enter Temperature in Celsius");
  double cel = double.parse(stdin.readLineSync()!);
  double fah = (cel * 1.8) + 32;
  print("Fahrenhiet is $fah oF");

  print("Enter Temperature in Fahrenhiet");
  fah = double.parse(stdin.readLineSync()!);
  cel = (fah - 32) / 1.8;
  print("Fahrenhiet is $cel oF");

  //Q-29 Write a program to create a calculator for +, -, *, / & % using if
  // statements. Take the following input:
  // a. First number Second number
  // b. Operation (+, -, *, /, %)
  // Compute & show the calculated result to user.
  print('Enter the first number:');
  num num1 = num.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  num num2 = num.parse(stdin.readLineSync()!);

  print('Enter the operation (+, -, *, /, %):');
  String operation = stdin.readLineSync()!;
  num result;
  if (operation == '+') {
    result = num1 + num2;
  } else if (operation == '-') {
    result = num1 - num2;
  } else if (operation == '*') {
    result = num1 * num2;
  } else if (operation == '/') {
    if (num2 != 0) {
      result = num1 / num2;
    } else {
      print('Error: Division by zero is not allowed.');
      return;
    }
  } else if (operation == '%') {
    if (num2 != 0) {
      result = num1 % num2;
    } else {
      print('Error: Division by zero is not allowed.');
      return;
    }
  } else {
    print('Error: Invalid operation.');
    return;
  }
  print('Result: $num1 $operation $num2 = $result');

  //   Q-30 Write a program that takes a character (I. e. string of length 1) and
  // returns true if it is a vowel, false otherwise.

  List<String> vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];

  print('Enter a character:');
  String input = stdin.readLineSync()!;

  if (input.length == 1) {
    if (vowels.contains(input)) {
      print("True");
    } else {
      print("False");
    }
  } else {
    print("Enter Single Character");
  }
  //Q-31 Write a program to reverse a string. For example, if my string is
  // "natsikaP nawaJ" then my result will be "Jawan Pakistan".

  String myname = "natsikaP nawaJ";
  String reverse = '';
  for (var i = myname.length - 1; i >= 0; i--) {
    reverse = reverse + myname[i];
  }
  print(reverse);

  //Q-32 Find the missing number in array of 1 to 100?

  List numList = [
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    29,
    30,
    31,
    32,
    33,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42,
    45,
    46,
    48,
    49,
    50,
    51,
    53,
    54,
    55,
    56,
    57,
    58,
    59,
    60,
    61,
    62,
    63,
    64,
    66,
    67,
    68,
    69,
    71,
    72,
    73,
    74,
    75,
    76,
    77,
    78,
    79,
    80,
    81,
    82,
    83,
    84,
    85,
    86,
    87,
    88,
    89,
    90,
    92,
    93,
    94,
    95,
    96,
    98,
    99,
    100
  ];

  for (var i = 0; i < numList.length; i++) {
    if (numList.contains(i)) {
    } else {
      print(i);
    }
  }

  //Q-33 Find the largest and smallest number in an unsorted integer array?

  List<int> unsortedList = [65, 34, 43, 44, 28, 70, 47, 52, 8, 11];

  int smalleest = unsortedList
      .reduce((value, element) => value < element ? value : element);

  int largest = unsortedList
      .reduce((value, element) => value > element ? value : element);

  print("Smaller is $smalleest & Largest is $largest");

  //Q-35 Create a Marks sheet using loop with given data also add 5 Subjects in root directory.

  List marksheet = [];
  String? name = marksheet[0];
  String? id = marksheet[1];
  double? math = marksheet[2];
  double? eng = marksheet[3];
  double? comp = marksheet[4];
  double? tot = marksheet[5];
  double? per = marksheet[6];
  for (var i = 0; i < 2; i++) {
    print("Enter Your Name");
    name = stdin.readLineSync();

    print("Enter Your ID");
    id = stdin.readLineSync();

    print("Enter Your Maths Marks");
    math = double.parse(stdin.readLineSync()!);

    print("Enter Your English Marks");
    eng = double.parse(stdin.readLineSync()!);

    print("Enter Your Computer Marks");
    comp = double.parse(stdin.readLineSync()!);

    tot = math + eng + comp;
    per = tot * 100 / 300;
  }

  print(marksheet);
}
