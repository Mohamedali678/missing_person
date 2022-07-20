import 'package:ambad2/models/data_brain.dart';
import 'package:flutter/cupertino.dart';

class Data extends ChangeNotifier {
  List<DataBrain> getData = [
    DataBrain(
      image: "images/kid1.jpg",
      name: "Mike Ali",
      age: 20,
      number: 0612334455,
      location: "Hodan",
      desc:
          "Wiilka waxuu kasoo lumay xaafada Hodan, wuuna xanuun sanyahay fadlan qofkii arko si naxariis leh hanagu soo hagaajiyo number kaas, mahadsanid.",
    ),
    DataBrain(
      image: "images/kid2.jpg",
      name: "Adam Abubakar",
      age: 30,
      number: 0615665522,
      location: "Madino",
      desc:
          "Wiilka waxuu kasoo lumay xaafada Hodan, wuuna xanuun sanyahay fadlan qofkii arko si naxariis leh hanagu soo hagaajiyo number kaas, mahadsanid.",
    ),
    DataBrain(
      image: "images/kid3.jpg",
      name: "Anas Muhanad",
      age: 19,
      number: 0613998877,
      location: "Daynile",
      desc:
          "Wiilka waxuu kasoo lumay xaafada Hodan, wuuna xanuun sanyahay fadlan qofkii arko si naxariis leh hanagu soo hagaajiyo number kaas, mahadsanid.",
    ),
    DataBrain(
      image: "images/kid1.jpg",
      name: "Abdulahi Abdi",
      age: 20,
      number: 0611008899,
      location: "Hodan",
      desc:
          "Wiilka waxuu kasoo lumay xaafada Hodan, wuuna xanuun sanyahay fadlan qofkii arko si naxariis leh hanagu soo hagaajiyo number kaas, mahadsanid.",
    ),
  ];

  void addNewData(image, String name, int age, int number, String location,
      String desc, bool isFile) {
    getData.add(
      DataBrain(
        image: image,
        name: name,
        age: age,
        number: number,
        location: location,
        desc: desc,
        isFile: isFile,
      ),
    );
    notifyListeners();
  }
}
