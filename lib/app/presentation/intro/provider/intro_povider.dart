import 'package:flutter/material.dart';
import 'package:setgo_app/app/presentation/intro/model/intro_model.dart';

class IntroProvider extends ChangeNotifier {
  List<IntroModel> girlList = [
    IntroModel(
        title: "Explore the World",
        subTitle: "let's explore the world with us with just a\nfew clicks",
        image: "assets/images/OnOne.png"),
    IntroModel(
        title: "Enjoy your holiday",
        subTitle:
            "Keep you travell very comfortable, easy and\nexplore the world with travelist.",
        image: "assets/images/OnTwo.png"),
    IntroModel(
        title: "Get ready for Trip?",
        subTitle:
            "Find thousands of tourist destinations ready\nfor you to visit",
        image: "assets/images/OnThree.png"),
  ];

  int change = 0;
  void colorChange(int value) {
    change = value;
    notifyListeners();
  }
}
