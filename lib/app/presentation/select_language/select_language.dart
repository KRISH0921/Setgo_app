import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/presentation/select_language/model/select_language_model.dart';
import 'package:setgo_app/app/presentation/select_language/provider/select_language_provider.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class SelectLanguage extends StatefulWidget {
  const SelectLanguage({super.key});

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  SelectLanguageProvider? providerT;
  SelectLanguageProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<SelectLanguageProvider>(context, listen: true);
    providerF = Provider.of<SelectLanguageProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 24.h),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset("assets/images/close.svg")),
                  SizedBox(
                    width: 36.72.h,
                  ),
                  customText(name: "Select a Language", fontSize: 18.sp)
                ],
              ),
            ),
            ListView.builder(
              primary: false,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 22.83.h),
              itemCount: providerF!.selectList.length,
              itemBuilder: (context, index) {
                SelectLanguageModel show = providerF!.selectList[index];
                return Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 24.h, right: 24.h),
                  child: GestureDetector(
                    onTap: () {
                      providerT!.change(index);
                    },
                    child: Container(
                      height: 50.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.r),
                        border: Border.all(
                            color: providerT!.show == index
                                ? primaryLightGreen
                                : primaryMercury),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.41.h),
                        child: Row(
                          children: [
                            providerT!.show == index
                                ? SvgPicture.asset(
                                    "assets/images/checkfill.svg")
                                : SvgPicture.asset("assets/images/check.svg"),
                            SizedBox(
                              width: 15.41.h,
                            ),
                            customText(
                                name: "${show.name}",
                                fontSize: 15.41.h,
                                fontFamily: "PlusSemiBold")
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
