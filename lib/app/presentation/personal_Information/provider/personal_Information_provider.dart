import 'package:flutter/material.dart';

class PersonalInformationProvider extends ChangeNotifier{

  bool gender = true;

  void change (){
    gender = !gender;
    notifyListeners();
  }
}
