import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setgo_app/app/components/custom_appbar.dart';
import 'package:setgo_app/app/components/custom_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/components/custom_textfield.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class ForgotPasswordOne extends StatefulWidget {
  const ForgotPasswordOne({super.key});

  @override
  State<ForgotPasswordOne> createState() => _ForgotPasswordOneState();
}

class _ForgotPasswordOneState extends State<ForgotPasswordOne> {
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
                    child: customText(name: "Create New Password"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 24.h),
                    child: customText(
                        name: "Create your password",
                        color: primaryBoulder,
                        fontSize: 16.sp,
                        fontFamily: "UrbanistRegular"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.h, left: 36.h),
                    child: customText(
                        name: "Password",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.h, left: 24.h, right: 24.h),
                    child: CustomTextFromField(hintText: "Password"),
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
                    child: CustomTextFromField(hintText: "Confirm Password"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 17.27.h, left: 24.h, right: 24.h,bottom: 211.h),
                    child: customText(
                        name:
                            "Your password must include at least one symbol and be 8\nor more characters long.",
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
                name: "Continue",
                onTap: () {
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
