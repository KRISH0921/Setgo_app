import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class CustomTextFromField extends StatefulWidget {
  CustomTextFromField(
      {super.key,
        required this.hintText,
        this.height,
        this.textColor,
        this.fontFamily,
        this.fontSize,
        this.line,
        this.icon,
        this.onTap,
        this.subIcon,
        this.controller,
        this. focusedColor,
      });

  String? hintText;
  Color? textColor;
  String? fontFamily;
  double? fontSize;
  double? height;
  int? line;
  Icon? icon;
  Function? onTap;
  Icon? subIcon;
  TextEditingController? controller;
  Color? focusedColor;

  @override
  State<CustomTextFromField> createState() => _CustomTextFromFieldState();
}

class _CustomTextFromFieldState extends State<CustomTextFromField> {
  TextEditingController timePicker = TextEditingController();
  TextEditingController datePicker = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: TextFormField(
        controller: widget.controller,
        maxLines: widget.line,

        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: widget.focusedColor ?? primaryGreen),
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: primaryMercury),
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primaryMercury),
            borderRadius: BorderRadius.all(
              Radius.circular(33.r),
            ),
          ),
          contentPadding: EdgeInsets.only(top: 13.h,right:13.h,left: 20.h),
          hintText: widget.hintText,
          prefixIcon: widget.icon,
          suffixIcon: widget.subIcon,
          hintStyle: TextStyle(
              color: widget.textColor ?? primaryAshGrey,
              fontFamily: widget.fontFamily ?? "UrbanistRegular",
              fontSize: widget.fontSize ?? 14.sp),
        ),
      ),
    );
  }
}
