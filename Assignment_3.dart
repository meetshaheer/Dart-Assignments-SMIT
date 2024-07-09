import 'dart:async';

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
}
