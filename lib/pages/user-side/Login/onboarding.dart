import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/user-side/Login/LoginPg.dart';
import 'package:sizer/sizer.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 10.h),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: 'Roboto',
                      color: const Color.fromRGBO(14, 13, 18, 1),
                    ),
                  ),
                  TextSpan(
                    text: 'Health4All',
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: 'Roboto',
                      color: const Color.fromRGBO(30, 59, 141, 1),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "Convienient care at your fingertips",
              style: TextStyle(
                fontSize: 14.sp,
                fontFamily: 'Roboto',
                color: const Color.fromRGBO(1, 82, 168, 1),
              ),
            ),
            const Spacer(),
            Text(
              "Your health our priority",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: 'Roboto',
                color: const Color.fromRGBO(15, 15, 15, 1),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Text(
              "Experience optimal care and exceptional service with our trusted medical app.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13.sp,
                fontFamily: 'Roboto',
                color: const Color.fromRGBO(134, 133, 136, 1),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(170, 44),
                  backgroundColor: buttonblue,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                onPressed: () {
                  Get.to(const LoginPage());
                },
                icon: const Icon(
                  Icons.arrow_right_alt_sharp,
                  size: 29.0,
                ),
                label: const Text(
                  "Get Started",
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
