// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Login/LoginM.dart';
import 'package:health4all/pages/Login/Signup.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: whiteColor,
        child: Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Transform.rotate(
                    angle: -50,
                    child: Container(
                      height: 6.h,
                      width: 50.w,
                      margin: const EdgeInsets.fromLTRB(76, 70, 76, 10),
                      decoration: const BoxDecoration(
                        color: lightblue,
                      ),
                    ).marginOnly(left: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Health",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: const Color.fromRGBO(63, 79, 81, 1),
                        ),
                      ),
                      Text(
                        "4",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Roboto',
                          color: const Color.fromRGBO(7, 80, 157, 1),
                        ),
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20.sp,
                          fontFamily: 'Roboto',
                          color: const Color.fromRGBO(63, 79, 81, 1),
                        ),
                      ),
                    ],
                  ).marginOnly(top: 8.5.h),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              const Image(image: AssetImage('assets/Login.jpeg')),
              SizedBox(
                height: 5.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(300, 44),
                    backgroundColor: buttonblue,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Get.to(const Signup());
                  },
                  child: const Text('Sign Up')),
              SizedBox(
                height: 3.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 2.0,
                      color: buttonblue,
                    ),
                    minimumSize: const Size(300, 44),
                    backgroundColor: whiteColor,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Get.to(const LoginM());
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: buttonblue),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
