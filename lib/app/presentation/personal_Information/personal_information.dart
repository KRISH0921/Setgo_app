import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:setgo_app/app/components/coustom_profile.dart';
import 'package:setgo_app/app/components/custom_appbar.dart';
import 'package:setgo_app/app/components/custom_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/components/custom_textfield.dart';
import 'package:setgo_app/app/presentation/personal_Information/provider/personal_Information_provider.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  PersonalInformationProvider? providerT;
  PersonalInformationProvider? providerF;

  String image = "";

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<PersonalInformationProvider>(context, listen: true);
    providerF =
        Provider.of<PersonalInformationProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(
                name: "Profile",
                fontSize: 18.sp,
                textAlign: TextAlign.center,
                fontFamily: "UrbanistSemiBold"),
            Expanded(
              child: ListView(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      alignment: Alignment(1, 0.9),
                      children: [
                        Container(
                          height: 94.h,
                          width: 100.h,
                          decoration: BoxDecoration(
                            image: image == ""
                                ? DecorationImage(
                                    image:
                                        AssetImage("assets/images/userp.png"),
                                  )
                                : DecorationImage(
                                    image: FileImage(File(image)),
                                    fit: BoxFit.fill,
                                  ),
                            shape: BoxShape.circle,
                            color: primaryWhite,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  surfaceTintColor: primaryWhite,
                                  content: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SizedBox(
                                          height: 30.73.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 30.13.h),
                                          child: customText(
                                              name: "Change your picture",
                                              color: primaryBlack,
                                              fontSize: 22.sp,
                                              fontFamily: "UrbanistSemiBold"),
                                        ),
                                        Divider(
                                          color: primaryAshGrey,
                                        ),
                                        SizedBox(
                                          height: 19.21.h,
                                        ),
                                        CustomProfile(
                                          onTap: () async {
                                            ImagePicker picker = ImagePicker();
                                            XFile? xFile =
                                                await picker.pickImage(
                                                    source: ImageSource.camera);

                                            setState(() {
                                              image = xFile!.path;
                                            });

                                            Navigator.pop(context);
                                          },
                                          height: 57.62.h,
                                          width: 18.2.h,
                                          name: "Take a photo",
                                          widthone: 16.2.h,
                                          fontSize: 14.sp,
                                          fontFamily: "UrbanistBold",
                                          subColor: primaryWhiteSmoke,
                                          svgPicture:
                                              "assets/images/Camera.svg",
                                        ),
                                        SizedBox(
                                          height: 19.21.h,
                                        ),
                                        CustomProfile(
                                          onTap: () async {
                                            ImagePicker picker = ImagePicker();
                                            XFile? xFile =
                                                await picker.pickImage(
                                                    source:
                                                        ImageSource.gallery);

                                            setState(() {
                                              image = xFile!.path;
                                            });

                                            Navigator.pop(context);
                                          },
                                          height: 57.62.h,
                                          width: 18.2.h,
                                          name: "Choose from your file",
                                          widthone: 16.2.h,
                                          fontSize: 14.sp,
                                          fontFamily: "UrbanistBold",
                                          subColor: primaryWhiteSmoke,
                                          svgPicture: "assets/images/file.svg",
                                        ),
                                        SizedBox(
                                          height: 19.21.h,
                                        ),
                                        CustomProfile(
                                          onTap: () {},
                                          height: 57.62.h,
                                          width: 18.2.h,
                                          name: "Delete Photo",
                                          widthone: 16.2.h,
                                          fontSize: 14.sp,
                                          fontFamily: "UrbanistBold",
                                          color: primaryRed,
                                          subColor: primaryWhiteSmoke,
                                          svgPicture: "assets/images/bin.svg",
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: SvgPicture.asset(
                            "assets/images/Editp.svg",
                            height: 32.h,
                            width: 32.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.h, left: 28.h, bottom: 7.h),
                    child: customText(
                        name: "First Name",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomTextFromField(hintText: "First name"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.h, left: 28.h, bottom: 7.h),
                    child: customText(
                        name: "Last Name",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomTextFromField(hintText: "Last name"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.h, left: 28.h, bottom: 7.h),
                    child: customText(
                        name: "Email",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomTextFromField(hintText: "Email"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 30.h, left: 28.h, bottom: 7.h),
                    child: customText(
                        name: "Date of Brith",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: CustomTextFromField(hintText: "Date of Brith"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 30.h, top: 23.h, bottom: 7.h),
                    child: customText(
                        name: "Gender",
                        color: primaryAshGrey,
                        fontSize: 12.sp,
                        fontFamily: "UrbanistMedium"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h, right: 38.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              providerT!.change();
                            },
                            child: Container(
                              height: 50.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: primaryMercury),
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 20.h),
                                  providerT!.gender == true
                                      ? SvgPicture.asset(
                                          "assets/images/check.svg")
                                      : SvgPicture.asset(
                                          "assets/images/checkfillg.svg"),
                                  SizedBox(width: 10.h),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                        color: primaryAshGrey,
                                        fontSize: 14.sp,
                                        fontFamily: "UrbanistMedium"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 37.h,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              providerT!.change();
                            },
                            child: Container(
                              height: 50.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: primaryMercury),
                                borderRadius: BorderRadius.circular(30.r),
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 20.h),
                                  providerT!.gender == true
                                      ? SvgPicture.asset(
                                          "assets/images/checkfillg.svg")
                                      : SvgPicture.asset(
                                          "assets/images/check.svg"),
                                  SizedBox(width: 10.h),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                        color: primaryAshGrey,
                                        fontSize: 14.sp,
                                        fontFamily: "UrbanistMedium"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: CustomButton(name: "Save Changes", onTap: () {}),
            ),
            SizedBox(
              height: 26.h,
            )
          ],
        ),
      ),
    );
  }
}
