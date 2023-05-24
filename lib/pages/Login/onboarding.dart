import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Login/LoginPg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      color: whiteColor,
      child: Scaffold(
        body: Column(
          children: [
            Container(
                margin: const EdgeInsets.fromLTRB(18.5, 92, 18.5, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to ",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(14, 13, 18, 1),
                      ),
                    ),
                    Text(
                      "Health4All",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(30, 59, 141, 1),
                      ),
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.fromLTRB(18.5, 0, 18.5, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Convienient care at your fingertips",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(1, 82, 168, 1),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 40.h,
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(18.5, 0, 18.5, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your health our priority",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(15, 15, 15, 1),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 10.h,
              width: 55.w,
              child: Text(
                "Experience optimal care and exceptional service with our trusted medical app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.sp,
                  fontFamily: 'Roboto',
                  color: const Color.fromRGBO(134, 133, 136, 1),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            ElevatedButton(
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
              child: SizedBox(
                height: 4.h,
                width: 40.w,
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Get Started",
                        textAlign: TextAlign.start,
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    const Icon(
                      LineIcons.arrowRight,
                      size: 29.0,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
