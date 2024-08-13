

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

Widget customText(
    {required String name,
      double? fontSize,
      Color? color,
      String? fontFamily,
      TextAlign? textAlign}) {
  return GestureDetector(
    child: Text(
      name,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: fontFamily ?? "UrbanistBold",
        fontSize: fontSize?? 28.sp,
        color: color?? primaryBlack,
      ),
    ),
  );
}