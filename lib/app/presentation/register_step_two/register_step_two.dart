import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setgo_app/app/components/custom_appbar.dart';
import 'package:setgo_app/app/components/custom_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/components/custom_textfield.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class RegisterStepTwo extends StatefulWidget {
  const RegisterStepTwo({super.key});

  @override
  State<RegisterStepTwo> createState() => _RegisterStepTwoState();
}

class _RegisterStepTwoState extends State<RegisterStepTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.h,left: 24.h),
                    child: customText(name: "Register your account"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h,left: 24.h),
                    child: customText(name: "Create Your Account",color: primaryBoulder,fontSize: 16.sp,fontFamily: "UrbanistRegular"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.h, left: 36.h),
                    child: customText(
                        name: "Email",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h, left: 24.h, right: 24.h),
                    child: CustomTextFromField(hintText: "Email",
                      focusedColor: primaryLightGreen,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 23.h, left: 36.h),
                    child: customText(
                        name: "Password",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h, left: 24.h, right: 24.h),
                    child: CustomTextFromField(hintText: "Password",
                      focusedColor: primaryLightGreen,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 23.h, left: 36.h),
                    child: customText(
                        name: "Confirm Password",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h, left: 24.h, right: 24.h),
                    child: CustomTextFromField(hintText: "Confirm Password",
                      focusedColor: primaryLightGreen,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h,left: 24.h,right: 24.h,bottom: 106.h),
                    child: customText(
                        name:
                        "Your password must include at least one symbol\nand be 8 or more characters long.",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistRegular"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomButton(
                name: "Create Password",
                onTap: () {
                  Navigator.pushNamed(context, "otp");
                },
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
          ],
        ),
      ),
    );
  }
}
