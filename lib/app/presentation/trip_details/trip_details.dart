import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:setgo_app/app/components/custom_appbar.dart';
import 'package:setgo_app/app/components/custom_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/presentation/home/model/home_model.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class TripDetails extends StatefulWidget {
  const TripDetails({super.key});

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  @override
  Widget build(BuildContext context) {

    HomeModel homeModel = ModalRoute.of(context)!.settings.arguments as HomeModel;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${homeModel.name}'),
          ],
        ),
      ),
    );
  }
}
