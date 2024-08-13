import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:setgo_app/app/components/custom_text.dart';
import 'package:setgo_app/app/presentation/home/provider/home_provider.dart';
import 'package:setgo_app/app/presentation/home/tab/booking_tab.dart';
import 'package:setgo_app/app/presentation/home/tab/explore_tab.dart';
import 'package:setgo_app/app/presentation/home/tab/home_tab.dart';
import 'package:setgo_app/app/presentation/home/tab/profile_tab.dart';
import 'package:setgo_app/app/presentation/home/tab/wish_list_tab.dart';
import 'package:setgo_app/app/them/custom_color/custom_color.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  HomeProvider? providerT;
  HomeProvider? providerF;

  @override
  Widget build(BuildContext context) {

    providerT = Provider.of<HomeProvider>(context, listen: true);
    providerF = Provider.of<HomeProvider>(context, listen: false);

    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: providerT!.i,
          children: [
            HomeTab(),
            ExploreTab(),
            BookingTab(),
            WishListTab(),
            ProfileTab(),
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          onTap: (value){
          providerT!.changePage(value);
          },
        unselectedLabelStyle: TextStyle(
            color: primaryGreen,
            fontSize: 10.sp,
            fontFamily: "UrbanistBold"
        ),
        selectedFontSize: 10.sp,
        selectedLabelStyle: TextStyle(
          color: primaryGreen,
          fontSize: 10.sp,
          fontFamily: "UrbanistBold"
        ),
        selectedItemColor: primaryGreen,
        showUnselectedLabels: true,
          currentIndex: providerT!.i,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Home.svg"),
              activeIcon:SvgPicture.asset("assets/images/Homefill.svg"),
                label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Explore.svg"),
              activeIcon:SvgPicture.asset("assets/images/Explorefill.svg"),
              label: "Explore"
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Booking.svg"),
              activeIcon:SvgPicture.asset("assets/images/Bookingfill.svg"),
                label: "Booking",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Wishlist.svg"),
              activeIcon:SvgPicture.asset("assets/images/Wishlistfill.svg"),
                label: "Wishlist"
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/images/Profile.svg"),
              activeIcon:SvgPicture.asset("assets/images/Profilefill.svg"),
                label: "Profile"
            ),
          ],
      ),
    );
  }
}
