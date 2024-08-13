import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:setgo_app/app/components/custom_appbar.dart';
import 'package:setgo_app/app/components/custom_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
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
                    child: customText(name: "OTP Verification"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h, left: 24.h),
                    child: customText(
                        name: "Create Your Account",
                        color: primaryBoulder,
                        fontSize: 16.sp,
                        fontFamily: "UrbanistRegular"),
                  ),
                  SizedBox(height: 50.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.h),
                          child: Pinput(
                            defaultPinTheme: PinTheme(
                              height: 50.h,
                              width: 70.h,
                              decoration: BoxDecoration(
                                border: Border.all(color: primaryMercury),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.r),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(top: 27.h, left: 24.h, right: 36.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText(
                            name: "Send code reload in", fontSize: 12.sp,color: primaryBoulder,fontFamily: "UrbanistRegular"),
                        customText(name: "02:10", fontSize: 12.sp,color: primaryBoulder,fontFamily: "UrbanistRegular")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomButton(name: "Submit",
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Container(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 28.h),
                              SvgPicture.asset(
                                  "assets/images/chek.svg"),
                              SizedBox(height: 24.h),
                              customText(name: "You have logged in",fontSize: 24.sp,color: primaryBlack,fontFamily: "UrbanistBold"),
                              customText(name: "successfully",fontSize: 24.sp,color: primaryBlack,fontFamily: "UrbanistBold"),
                              SizedBox(height: 8.h),
                              customText(
                                  name: "After this you can explore any place you",fontSize: 14.sp,color: primaryDoveGrey,fontFamily: "UrbanistRegular"),
                              customText(name: "want. enjoy it!",fontSize: 14.sp,color: primaryDoveGrey,fontFamily: "UrbanistRegular"),
                              SizedBox(height: 16.h),
                              CustomButton(
                                name: "Continue",
                                onTap: () {
                                  Navigator.pushNamed(context, "explore");
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(height: 32.h,)
          ],
        ),
      ),
    );
  }
}
