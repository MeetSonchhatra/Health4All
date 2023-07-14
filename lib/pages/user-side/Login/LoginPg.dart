// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/user-side/Login/LoginM.dart';
import 'package:health4all/pages/user-side/Login/Signup.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/shape.png",
                width: 44.5.w,
                height: 17.h,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Health",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(63, 79, 81, 1),
                      ),
                    ),
                    TextSpan(
                      text: "4",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(7, 80, 157, 1),
                      ),
                    ),
                    TextSpan(
                      text: "All",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.sp,
                        fontFamily: 'Roboto',
                        color: const Color.fromRGBO(63, 79, 81, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Image(image: AssetImage('assets/Login.jpeg')),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(81.595.w, 5.h),
              backgroundColor: buttonblue,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            onPressed: () {
              Get.to(() => const Signup());
            },
            child: const Text('Sign Up'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              side: const BorderSide(
                width: 2.0,
                color: buttonblue,
              ),
              minimumSize: Size(81.595.w, 5.h),
              backgroundColor: whiteColor,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
            onPressed: () {
              Get.to(() => const LoginM());
            },
            child: const Text(
              'Login',
              style: TextStyle(color: buttonblue),
            ),
          ),
        ],
      ),
    );
  }
}
