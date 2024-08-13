import 'package:flutter/material.dart';
import 'package:setgo_app/app/presentation/select_language/model/select_language_model.dart';

class SelectLanguageProvider extends ChangeNotifier {

  List<SelectLanguageModel>selectList = [
    SelectLanguageModel(name: "English (UK)"),
    SelectLanguageModel(name: "English"),
    SelectLanguageModel(name: "Bahasa Indonesia"),
    SelectLanguageModel(name: "Chineses"),
    SelectLanguageModel(name: "Croatian"),
    SelectLanguageModel(name: "Czech"),
    SelectLanguageModel(name: "Danish"),
    SelectLanguageModel(name: "Filipino"),
    SelectLanguageModel(name: "Finland"),

  ];

  String data = "";

  int? show;

  void change(int value){
    show = value;
    notifyListeners();
  }

}