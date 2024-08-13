import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:setgo_app/app/components/custom_appbar.dart';
import 'package:setgo_app/app/components/custom_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class SelectExplore extends StatefulWidget {
  const SelectExplore({super.key});

  @override
  State<SelectExplore> createState() => _SelectExploreState();
}

class _SelectExploreState extends State<SelectExplore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            Padding(
              padding: EdgeInsets.only(top: 30.h,left: 24.h),
              child: customText(name: "Select your Language"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h,left: 24.h),
              child: customText(name: "Select your own language",color: primaryBoulder,fontSize: 16.sp,fontFamily: "UrbanistRegular"),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.h,left: 36.h),
                    child: customText(name: "Language",color: primaryAshGrey,fontSize: 12.sp,fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h, left: 24.h, right: 24.h),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "language");
                      },
                      child: Container(
                        height: 50.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryMercury),
                            borderRadius: BorderRadius.all(Radius.circular(30.r))),
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.h, right: 28.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              customText(
                                  name: "English",
                                  color: primaryBlack,
                                  fontSize: 14.sp,fontFamily: "UrbanistRegular"),
                              SvgPicture.asset("assets/images/arrow_down.svg"),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomButton(name: "Continue", onTap: (){

                Navigator.pushNamed(context, "destination");
              }),
            ),
            SizedBox(height: 24.h,)
          ],
        ),
      ),
    );
  }
}
