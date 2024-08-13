import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:setgo_app/app/presentation/home/model/home_model.dart';

class HomeProvider extends ChangeNotifier {
  List<HomeModel> dataList = [
    HomeModel(name: "Lake", image: "assets/images/Lake.png"),
    HomeModel(name: "Beach", image: "assets/images/Beach.png"),
    HomeModel(name: "Forest", image: "assets/images/Forest.png"),
    HomeModel(name: "Mountain", image: "assets/images/Mountain.png"),
    HomeModel(name: "Garden", image: "assets/images/Garden.png"),
  ];

  List<HomeModel> recomeList = [
    HomeModel(
        name: "Perfect Honeymoon,\nParis",
        title: "Starting at \$630",
        image: "assets/images/Cardone.png"),
    HomeModel(
        name: "Montreull, oed,\nFrance",
        title: "Starting at \$100",
        image: "assets/images/France.png"),
    HomeModel(
        name: "Perfect Honeymoon,\nParis",
        title: "Starting at \$630",
        image: "assets/images/Cardone.png"),
  ];

  List<HomeModel> exploreList = [
    HomeModel(name: "All"),
    HomeModel(name: "Popular"),
    HomeModel(name: "Recomended"),
    HomeModel(name: "Rating"),
    HomeModel(name: "Places to visited"),
  ];

  List<HomeModel> plashList = [
    HomeModel(
      name: "Perfect Honeymoon,\nParis",
      title: "Starting at \$630",
      image: "assets/images/Cardone.png",like: false),
    HomeModel(
        name: "Montreull, oed,\nFrance",
        nameB: "jsadnj",
        title: "Starting at \$100",
        image: "assets/images/France.png",like: false),
    HomeModel(
        name: "Best Place to visit,\nFrance",
        title: "Starting at \$730",
        image: "assets/images/VisitFrance.png",like: false),
    HomeModel(
        name: "Visit the place\nwhere you want",
        title: "Starting at \$200",
        image: "assets/images/place.png",like: false),
  ];

  void like(int index){
    plashList[index].like == false ?  plashList[index].like = true : plashList[index].like = false;
    print("esfadsasds${plashList[index].like}");
    notifyListeners();
  }

  List<HomeModel> bookingList = [
    HomeModel(
      title: "Landon to San Diego",
      name: "Departs on Fri,",
      subTitle: "14 Sep 2024 - 19 Sep 2024",
      subName: "Purchase successfull",
      nameB: "\$490",
      image: "assets/images/checkb.svg",
      subImage: "assets/images/calendar.svg",
    )
  ];


  int i = 0;

  void changePage(int value) {
    i = value;
    notifyListeners();
  }
}
