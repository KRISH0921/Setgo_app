import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class CustomButton extends StatefulWidget {
  CustomButton({
    super.key,
    required this.name,
    required this.onTap,
    this.buttonColor,
    this.fontFamily,
    this.fontColor,
    this.height,
    this.fontSize,
  });

  String name;
  Function onTap;
  Color? buttonColor;
  String? fontFamily;
  Color? fontColor;
  double? height;
  double? fontSize;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap.call();
      },
      child: Container(
        height: widget.height ?? 50.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: widget.buttonColor ?? primaryGreen,
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        child: Center(
          child: customText(
            name: widget.name,
            fontSize: widget.fontSize ?? 16.sp,
            color: widget.fontColor ?? primaryWhite,
            fontFamily: widget.fontFamily ?? "UrbanistBold",
          ),
        ),
      ),
    );
  }
}
