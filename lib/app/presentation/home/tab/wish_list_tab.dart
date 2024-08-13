import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:setgo_app/app/components/custom_appbar.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/presentation/home/model/home_model.dart';
import 'package:setgo_app/app/presentation/home/provider/home_provider.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class WishListTab extends StatefulWidget {
  const WishListTab({super.key});

  @override
  State<WishListTab> createState() => _WishListTabState();
}

class _WishListTabState extends State<WishListTab> {

  HomeProvider? providerT;
  HomeProvider? providerF;

  @override
  Widget build(BuildContext context) {

    providerT = Provider.of<HomeProvider>(context,listen: true);
    providerF = Provider.of<HomeProvider>(context,listen: false);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(
              textAlign: TextAlign.center,
              name: "Your Wishlist",
              fontSize: 18.sp,
              fontFamily: "UrbanistBold",
            ),
            Expanded(
              child: GridView.builder(
                primary: false,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 8.h),
                itemCount: providerF!.plashList.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.h,
                ),
                itemBuilder: (context, index) {
                  HomeModel plash = providerF!.plashList[index];
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.5.h),
                    child: Container(
                      height: 218.h,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Image.asset("${plash.image}",fit: BoxFit.fill,width: double.infinity,),
                          Align(
                              alignment:Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 12.h,right: 16.h),
                            child: SvgPicture.asset("assets/images/Likefill.svg"),
                          )),
                          Padding(
                            padding: EdgeInsets.only(
                                left: 8.h, right: 8.h, bottom: 8.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
