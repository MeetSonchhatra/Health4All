import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:health4all/pages/Login/LoginPg.dart';
import 'package:health4all/pages/Login/onboarding.dart';
import 'package:health4all/pages/Login/splashscreen.dart';

class MyRoutes{
  static String loginroute = "/login";
  static String splashroute = "/splash";
  static String onboardingroute = "/onboarding";
}

final getPages = [
  GetPage(
    name: MyRoutes.splashroute,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: MyRoutes.onboardingroute,
    page: () => const Onboarding(),
  ),
  GetPage(
    name: MyRoutes.loginroute,
    page: () => const LoginPage(),
  ),

  
];