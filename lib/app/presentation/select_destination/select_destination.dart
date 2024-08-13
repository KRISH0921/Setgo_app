import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:setgo_app/app/components/custom_button.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/presentation/select_destination/model/select_destination_model.dart';
import 'package:setgo_app/app/presentation/select_destination/provider/select_destination_provider.dart';

class SelectDestination extends StatefulWidget {
  const SelectDestination({super.key});

  @override
  State<SelectDestination> createState() => _SelectDestinationState();
}

class _SelectDestinationState extends State<SelectDestination> {
  SelectDestinationProvider? providerT;
  SelectDestinationProvider? providerF;

  @override
  Widget build(BuildContext context) {
    providerT = Provider.of<SelectDestinationProvider>(context, listen: true);
    providerF = Provider.of<SelectDestinationProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 36.h, left: 24.h),
              child: customText(name: "Where is your dream\nVacation to go?"),
            ),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 17.31.h,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  SelectDestinationModel show = providerF!.imageList[index];
                  return Container(
                    child: Image.asset("${show.image}",height: 138.h,width: 154.45.h,),
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(image: AssetImage("${show.image}"),)
                    // ) ,
                  );
                },

              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: CustomButton(
                name: "Continue",
                onTap: () {
                  Navigator.pushNamed(context, "home");
                },
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
