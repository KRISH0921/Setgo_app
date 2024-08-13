
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:setgo_app/app/presentation/forgot_password/forgot_password.dart';
import 'package:setgo_app/app/presentation/forgot_password_one/forgot_password_one.dart';
import 'package:setgo_app/app/presentation/home/home.dart';
import 'package:setgo_app/app/presentation/home/provider/home_provider.dart';
import 'package:setgo_app/app/presentation/intro/intro.dart';
import 'package:setgo_app/app/presentation/intro/provider/intro_povider.dart';
import 'package:setgo_app/app/presentation/otp_verification/otp_verification.dart';
import 'package:setgo_app/app/presentation/personal_Information/personal_information.dart';
import 'package:setgo_app/app/presentation/personal_Information/provider/personal_Information_provider.dart';
import 'package:setgo_app/app/presentation/register_step_one/register_step_one.dart';
import 'package:setgo_app/app/presentation/register_step_two/register_step_two.dart';
import 'package:setgo_app/app/presentation/select_destination/provider/select_destination_provider.dart';
import 'package:setgo_app/app/presentation/select_destination/select_destination.dart';
import 'package:setgo_app/app/presentation/select_explore/select-explore.dart';
import 'package:setgo_app/app/presentation/select_language/provider/select_language_provider.dart';
import 'package:setgo_app/app/presentation/select_language/select_language.dart';
import 'package:setgo_app/app/presentation/sign_in/sign_in.dart';
import 'package:setgo_app/app/presentation/splash/splash.dart';
import 'package:setgo_app/app/presentation/trip_details/trip_details.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<IntroProvider>(create: (context) => IntroProvider(),),
        ChangeNotifierProvider<SelectLanguageProvider>(create: (context) => SelectLanguageProvider(),),
        ChangeNotifierProvider<SelectDestinationProvider>(create: (context) => SelectDestinationProvider(),),
        ChangeNotifierProvider<HomeProvider>(create: (context) => HomeProvider(),),
        ChangeNotifierProvider<PersonalInformationProvider>(create: (context) => PersonalInformationProvider(),),
      ],
      child: ScreenUtilInit(
        designSize: Size(375,812),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "/",
          routes: <String, WidgetBuilder>{
            "/" :(context) => Splash(),
            "intro" :(context) => Intro(),
            "sign" :(context) => SignIn(),
            "forgot" :(context) => ForgotPassword(),
            "password" :(context) => ForgotPasswordOne(),
            "stepOne" :(context) => RegisterStepOne(),
            "stepTwo" :(context) => RegisterStepTwo(),
            "otp" :(context) => OtpVerification(),
            "explore" :(context) => SelectExplore(),
            "language" :(context) => SelectLanguage(),
            "destination" :(context) => SelectDestination(),
            "home" :(context) => Home(),
            "personal" :(context) => PersonalInformation(),
            "detail" :(context) => TripDetails(),
          },
        ),
      ),
    );
  }
}
