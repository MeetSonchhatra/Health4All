import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/pages/LoginPg.dart';

import 'package:health4all/pages/onboarding.dart';
import 'package:sizer/sizer.dart';
import '../consts/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const Onboarding());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkblue,
      body: Center(
        // child: RippleAnimation(
        //     key: UniqueKey(),
        //     repeat: true,
        //     color: Colors.blue,
        //     minRadius: 180,
        //     ripplesCount: 10,
        //     duration: const Duration(microseconds: 2300),
        //   child: Center(
        //  child: ClipRect(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Health",
              style: TextStyle(
                fontSize: 40.sp,
                fontFamily: 'Roboto',
                color: Colors.white,
              ),
            ),
            Text(
              "4",
              style: TextStyle(
                fontSize: 40.sp,
                fontFamily: 'Roboto',
                color: Colors.blue,
              ),
            ),
            Text(
              "All",
              style: TextStyle(
                fontSize: 40.sp,
                fontFamily: 'Roboto',
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      // ),
      //  ),
      //  ),
    );
  }
}
