import 'package:flutter/material.dart';
import 'package:setgo_app/app/presentation/select_destination/model/select_destination_model.dart';

class SelectDestinationProvider extends ChangeNotifier {

  List<SelectDestinationModel> imageList =[
    SelectDestinationModel(image: "assets/images/Spain.png"),
    SelectDestinationModel(image: "assets/images/Italy.png"),
    SelectDestinationModel(image: "assets/images/Paris.png"),
    SelectDestinationModel(image: "assets/images/Turkey.png"),
    SelectDestinationModel(image: "assets/images/Mesir.png"),
    SelectDestinationModel(image: "assets/images/China.png"),

  ];

}