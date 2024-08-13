import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:setgo_app/app/components/coustom_profile.dart';
import 'package:setgo_app/app/components/custom_appbar.dart';
import 'package:setgo_app/app/components/custom_sub_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(
                name: "Profile",
                fontSize: 18.sp,
                textAlign: TextAlign.center,
                fontFamily: "UrbanistSemiBold"),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16.h, left: 16.h, right: 26.h),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/Julia.png",
                          height: 56.h,
                          width: 56.h,
                        ),
                        SizedBox(
                          width: 11.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                                name: "Julia Smith",
                                fontSize: 18.sp,
                                fontFamily: "PlusSemiBold"),
                            customText(
                                name: "Semarang, Netherlands",
                                color: primarySteelGrey,
                                fontSize: 12.sp,
                                fontFamily: "UrbanistMedium"),
                          ],
                        ),
                        Spacer(),
                        SvgPicture.asset("assets/images/Edit.svg"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomProfile(
                      onTap: () {
                        Navigator.pushNamed(context, "personal");
                      },
                      width: 20.h,
                      name: "Personal Information",
                      widthone: 12.h,
                      svgPicture: "assets/images/user.svg",
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomProfile(
                      onTap: () {},
                      width: 20.h,
                      name: "Notification",
                      widthone: 12.h,
                      svgPicture: "assets/images/notification.svg",
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomProfile(
                      onTap: () {},
                      width: 20.h,
                      name: "FAQ",
                      widthone: 12.h,
                      svgPicture: "assets/images/faq.svg",
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomProfile(
                      onTap: () {},
                      width: 20.h,
                      name: "Language",
                      widthone: 12.h,
                      svgPicture: "assets/images/language.svg",
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomSubButton(
                        height: 64.h,
                        name: "Log Out",
                        fontSize: 14.sp,
                        textColor: primaryRed,
                        borderColor: primaryRed,
                        onTap: () {}),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
