import 'package:ambad2/models/data_brain.dart';
import 'package:flutter/cupertino.dart';

class Data extends ChangeNotifier {
  List<DataBrain> getData = [
    DataBrain(
        image: "images/kid1.jpg", name: "Mike Ali", age: 20, location: "Hodan"),
    DataBrain(
        image: "images/kid2.jpg",
        name: "Adam Abubakar",
        age: 30,
        location: "Madino"),
    DataBrain(
        image: "images/kid3.jpg",
        name: "Anas Muhanad",
        age: 19,
        location: "Daynile"),
    DataBrain(
        image: "images/kid1.jpg",
        name: "Abdulahi Abdi",
        age: 20,
        location: "Hodan"),
  ];

  void addNewData(image, String name, int age, String location, bool isFile) {
    getData.add(
      DataBrain(
        image: image,
        name: name,
        age: age,
        location: location,
        isFile: isFile,
      ),
    );
    notifyListeners();
  }
}
