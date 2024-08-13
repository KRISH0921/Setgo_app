import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:setgo_app/app/components/custom_search.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/presentation/home/model/home_model.dart';
import 'package:setgo_app/app/presentation/home/provider/home_provider.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({super.key});

  @override
  State<ExploreTab> createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab> {
  HomeProvider? providerT;
  HomeProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<HomeProvider>(context, listen: true);
    providerF = Provider.of<HomeProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 16.h),
              child: customText(
                  name: "Discover",
                  fontSize: 24.sp,
                  fontFamily: "UrbanistSemiBold"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, left: 16.h),
              child: customText(
                  name: "Explore the best places in the world!",
                  fontSize: 14.sp,
                  fontFamily: "UrbanistRegular"),
            ),
            SizedBox(
              height: 24.h,
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
                    height: 32.h,
                    width: double.infinity,
                    child: ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 9.h),
                      itemCount: providerF!.exploreList.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        HomeModel show = providerF!.exploreList[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 7.h),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: primaryMercury),
                              borderRadius: BorderRadius.circular(30.r),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.h),
                              child: Row(
                                children: [
                                  customText(
                                      name: "${show.name}",
                                      fontSize: 14.sp,
                                      fontFamily: "UrbanistMedium")
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.h),
                    child: GridView.builder(
                      primary: false,
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 8.h),
                      itemCount: providerF!.plashList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16.h,
                        // crossAxisSpacing: 16.h,
                        mainAxisExtent: 218.h,
                      ),
                      itemBuilder: (context, index) {
                        HomeModel plash = providerT!.plashList[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              "detail",
                              arguments: plash,
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.h),
                            child: Container(
                              height: 218.h,
                              width: double.infinity,
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "${plash.image}",
                                    fit: BoxFit.fill,
                                    width: double.infinity,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 8.h, right: 8.h, bottom: 8.h),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        customText(
                                            name: "${plash.name}",
                                            color: primaryWhite,
                                            fontSize: 14.sp,
                                            fontFamily: "UrbanistSemiBold"),
                                        customText(
                                            name: "${plash.title}",
                                            color: primaryWhite,
                                            fontSize: 10.sp,
                                            fontFamily: "UrbanistMedium"),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: IconButton(onPressed: () {
                                      providerT!.like(index);
                                    }, icon: plash.like == true ?  SvgPicture.asset("assets/images/Likefill.svg") : SvgPicture.asset("assets/images/Likeout.svg"),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
