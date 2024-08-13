import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:setgo_app/app/components/custom_button.dart';
import 'package:setgo_app/app/components/custom_sub_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/components/custom_textfield.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 24.h, top: 32.h),
                    child: customText(name: "Input Your Email"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h, top: 10.h),
                    child: customText(
                        name: "Your Sign in details",
                        color: primaryBoulder,
                        fontSize: 16.sp,
                        fontFamily: "UrbanistRegular"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 36.46.h, top: 60.h),
                    child: customText(
                        name: "Email",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h, top: 7.h),
                    child: CustomTextFromField(hintText: "Email"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 36.h, top: 30.h),
                    child: customText(
                        name: "Password",
                        color: primaryAshGrey,
                        fontSize: 14.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 24.h, top: 7.h),
                    child: CustomTextFromField(hintText: "Password"),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Row(
                      children: [
                        SvgPicture.asset("assets/images/stop.svg"),
                        SizedBox(
                          width: 5.h,
                        ),
                        customText(
                            name: "Remember me",
                            color: primaryAshGrey,
                            fontSize: 14.sp,
                            fontFamily: "UrbanistMedium"),
                        Spacer(),
                        GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "forgot");
                            },
                            child: customText(
                                name: "Forgot password",
                                color: primaryAshGrey,
                                fontSize: 14.sp,
                                fontFamily: "UrbanistMedium")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomSubButton(name: "Create Account", onTap: () {
                Navigator.pushNamed(context, "stepOne");
              },),
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomButton(name: "Sign In", onTap: () {
                
                Navigator.pushNamed(context, "home");
              }),
            ),
            SizedBox(height: 38.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 86.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset("assets/images/Google.svg"),
                  SvgPicture.asset("assets/images/Facebook.svg"),
                  SvgPicture.asset("assets/images/Instagram.svg"),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            )
          ],
        ),
      ),
    );
  }
}
