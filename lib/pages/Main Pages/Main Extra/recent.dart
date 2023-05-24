import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:sizer/sizer.dart';

class Recent extends StatelessWidget {
  const Recent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonblue,
        title: const Text(
          'Your Recent Test',
          style: TextStyle(color: whiteColor, fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 2.h),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: GestureDetector(
              onTap: () {
                // Get.to(HomePg());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 350,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/coronavirus.png'),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    const Text(
                      "Covid test",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                  ],
                ),
              ),
            ),
          ).paddingOnly(left: 9.w, right: 9.w),
          SizedBox(
            height: 1.h,
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: GestureDetector(
              onTap: () {
                // Get.to(HomePg());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 350,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/blood-drop.png'),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    const Text(
                      "Blood test",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                  ],
                ),
              ),
            ),
          ).paddingOnly(left: 9.w, right: 9.w),
          SizedBox(
            height: 1.h,
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: GestureDetector(
              onTap: () {
                // Get.to(HomePg());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 350,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/coronavirus.png'),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    const Text(
                      "Covid test",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                  ],
                ),
              ),
            ),
          ).paddingOnly(left: 9.w, right: 9.w),
          SizedBox(
            height: 1.h,
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: GestureDetector(
              onTap: () {
                // Get.to(HomePg());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 50,
                width: 350,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset('assets/coronavirus.png'),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    const Text(
                      "Covid test",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                  ],
                ),
              ),
            ),
          ).paddingOnly(left: 9.w, right: 9.w),
        ],
      ),
    );
  }
}
