import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:setgo_app/app/components/custom_search.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/presentation/home/model/home_model.dart';
import 'package:setgo_app/app/presentation/home/provider/home_provider.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  HomeProvider? providerT;
  HomeProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<HomeProvider>(context, listen: true);
    providerF = Provider.of<HomeProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 16.h, right: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText(
                      name: "Hi, Julia!",
                      fontSize: 24.h,
                      fontFamily: "UrbanistSemiBold"),
                  Image.asset(
                    "assets/images/Julia.png",
                    height: 36.h,
                    width: 36.h,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: CustomSearch(
                  widthOne: 17.42.h,
                  svgPictureOne: "assets/images/search.svg",
                  widthTwo: 17.42.h,
                  name: "Search destina..",
                  color: primaryAshGrey,
                  fontSize: 14.sp,
                  fontFamily: "UrbanistRegularl",
                  svgPictureTwo: "assets/images/Vector.svg",
                  widthThree: 8.h,
                  svgPictureThree: "assets/images/Filter.svg",
                  widthFour: 20.h,
                  onTap: () {}),
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
              child: ListView(
                primary: true,
                shrinkWrap: false,
                children: [
                  SizedBox(
                    height: 101.73.h,
                    width: double.infinity,
                    child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      itemCount: providerF!.dataList.length,
                      itemBuilder: (context, index) {
                        HomeModel show = providerF!.dataList[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13.h),
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  height: 64.73.h,
                                  width: 64.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: primaryMercury),
                                      shape: BoxShape.circle),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "${show.image}",
                                        height: 30.h,
                                        width: 33.h,
                                      ),
                                    ],
                                  ),
                                ),
                                customText(
                                    name: "${show.name}",
                                    fontSize: 16.sp,
                                    fontFamily: "UrbanistSemiBold")
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 26.27.h, left: 16.h),
                    child: customText(
                        name: "Recomended",
                        fontSize: 22.sp,
                        fontFamily: "UrbanistSemiBold"),
                  ),
                  SizedBox(height: 18.h),
                  SizedBox(
                    height: 258.h,
                    width: double.infinity,
                    child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 7.5.h),
                      scrollDirection: Axis.horizontal,
                      itemCount: providerF!.recomeList.length,
                      itemBuilder: (context, index) {
                        HomeModel show = providerF!.recomeList[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.5.h),
                          child: Stack(
                            children: [
                              Image.asset(
                                "${show.image}",
                                height: 240.h,
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 154.h,
                                  left: 8.h,
                                ),
                                child: customText(
                                    name: "${show.name}",
                                    color: primaryWhite,
                                    fontSize: 14.sp,
                                    fontFamily: "UrbanistSemiBold"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 8.h, top: 205.h, right: 8.h),
                                child: customText(
                                    name: "${show.title}",
                                    color: primaryWhite,
                                    fontSize: 10.sp,
                                    fontFamily: "UrbanistMedium"),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.sp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customText(
                          name: "Places to visited",
                          fontSize: 22.sp,
                          fontFamily: "UrbanistSemiBold",
                        ),
                        customText(
                          name: "See All",
                          color: primaryGreen,
                          fontSize: 14.sp,
                          fontFamily: "UrbanistSemiBold",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 18.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Container(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assets/images/Rome.png"),
                            ],
                          ),
                          SizedBox(
                            height: 14.h,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 1.h),
                            child: Row(
                              children: [
                                customText(
                                    name: "Rome, Italy",
                                    fontSize: 16.sp,
                                    fontFamily: "UrbanistSemiBold"),
                                Spacer(),
                                customText(
                                    name: "\$",
                                    fontSize: 12.sp,
                                    color: primarySteelGrey,
                                    fontFamily: "UrbanistSemiBold"),
                                customText(
                                    name: "199",
                                    fontSize: 18.sp,
                                    fontFamily: "UrbanistMedium"),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 1.h,),
                              SvgPicture.asset("assets/images/Location.svg"),
                              SizedBox(width: 5.h,),
                              customText(name: "Sylhet,BD",color: primarySteelGrey,fontSize: 18.sp,fontFamily: "UrbanistRegular"),
                              SizedBox(width: 8.h,),
                            ],
                          ),
                        ],
                      ),
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
