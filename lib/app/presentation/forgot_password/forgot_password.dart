import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setgo_app/app/components/custom_appbar.dart';
import 'package:setgo_app/app/components/custom_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/components/custom_textfield.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                    padding: EdgeInsets.only(top: 30.h, left: 24.h),
                    child: customText(name: "Input Your Email"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 24.h),
                    child: customText(
                        name: "Your Email address ",
                        color: primaryBoulder,
                        fontSize: 16.sp,
                        fontFamily: "UrbanistRegular"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.h, left: 36.h),
                    child: customText(
                        name: "Email",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h, left: 24.h, right: 24.h),
                    child: CustomTextFromField(hintText: "Email"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomButton(name: "Submit",
                  onTap: () {
                Navigator.pushNamed(context, "password");
                  }),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
