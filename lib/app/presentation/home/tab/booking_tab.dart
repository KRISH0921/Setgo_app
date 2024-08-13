import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:setgo_app/app/components/custom_appbar.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class BookingTab extends StatefulWidget {
  const BookingTab({super.key});

  @override
  State<BookingTab> createState() => _BookingTabState();
}

class _BookingTabState extends State<BookingTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbar(
              name: "Booking",
              fontSize: 18.sp,
              textAlign: TextAlign.center,
            ),
           Expanded(
             child: ListView(
               children: [
                 Padding(
                   padding: EdgeInsets.only(top: 32.h,left: 31.24.h),
                   child: customText(name: "September 2024",fontSize: 16.sp,),
                 ),
                 Padding(
                   padding: EdgeInsets.only(top:24.h,left: 31.24.h),
                   child: customText(name: "October 2024",fontSize: 16.sp,),
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
