import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class CustomSearch extends StatefulWidget {
   CustomSearch({
    super.key,
    required this.onTap,
     this.name,
     this.height,
     this.widthOne,
     this.widthTwo,
     this.widthThree,
     this.widthFour,
     this.color,
     this.fontSize,
     this.fontFamily,
     this.svgPictureOne,
     this.svgPictureTwo,
     this.svgPictureThree,
  });

  Function onTap;
  String? name;
  double? height;
  double? widthOne;
  double? widthTwo;
  double? widthThree;
  double? widthFour;
  Color? color;
  double? fontSize;
  String? fontFamily;
  String? svgPictureOne;
  String? svgPictureTwo;
  String? svgPictureThree;




  @override
  State<CustomSearch> createState() => _CustomSearchState();
}

class _CustomSearchState extends State<CustomSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height ?? 50.h,
      decoration: BoxDecoration(
        border: Border.all(color: primaryMercury),
            borderRadius: BorderRadius.circular(30.r),
      ),
      child: Row(
        children: [
          SizedBox(width: widget.widthOne,),
          SvgPicture.asset(widget.svgPictureOne ?? ""),
          SizedBox(width: widget.widthTwo,),
          customText(name: widget.name ?? "",color: widget.color,fontFamily: widget.fontFamily,fontSize: widget.fontSize),
          Spacer(),
          SvgPicture.asset(widget.svgPictureTwo ?? ""),
          SizedBox(width: widget.widthThree,),
          SvgPicture.asset(widget.svgPictureThree ?? ""),
          SizedBox(width: widget.widthFour,),
        ],
      ),
    );
  }
}