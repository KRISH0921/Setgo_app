import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:setgo_app/app/components/custom_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/presentation/intro/provider/intro_povider.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  PageController pageController = PageController();

  IntroProvider? providerT;
  IntroProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<IntroProvider>(context, listen: true);
    providerF = Provider.of<IntroProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: providerF!.girlList.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Image.asset(
                        "${providerT!.girlList[index].image}",fit: BoxFit.fill,width: double.infinity,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(bottom: 83.h,left: 30.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customText(
                                name: "${providerT!.girlList[index].title}",
                                color: primaryBlack,
                                fontSize: 28.sp,
                                fontFamily: "UrbanistBold"),
                            SizedBox(
                              height: 16.h,
                            ),
                            customText(
                                name:
                                "${providerT!.girlList[index].subTitle}",
                                color: primaryBlack,
                                fontSize: 16.sp,
                                fontFamily: "UrbanistRegular"),
                          ],
                        ),
                      ),
                    ],
                  );
                },
                onPageChanged: (value) {
                  providerT!.colorChange(value);
                },
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 25.h,left:30.h,right: 30.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(
                    providerF!.girlList.length,
                        (index) => Padding(
                      padding: EdgeInsets.only(right: 15.h),
                      child: Container(
                        height: 9.h,
                        width: providerT!.change == index ? 28.h : 9.h,
                        decoration: BoxDecoration(
                          color: providerT!.change == index
                              ? Color(0xFF048547)
                              : Color(0xFFA9A9A9),
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: CustomButton(
                      name: "Get Started",
                      fontSize: 16.sp,
                      fontFamily: "PoppinsRegular",
                      onTap: () {
                        Navigator.pushNamed(context, "sign");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
