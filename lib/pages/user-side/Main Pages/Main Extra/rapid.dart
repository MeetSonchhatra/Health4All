import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/user-side/Search/book.dart';
import 'package:sizer/sizer.dart';

class RapidTest extends StatelessWidget {
  const RapidTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: buttonblue,
        title: Text(
          'Rapid Tests',
          style: TextStyle(color: whiteColor, fontSize: 12.4.sp),
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
                height: 5.95.h,
                width: 90.w,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.49.w, vertical: 1.7.h),
                      child: Image.asset('assets/coronavirus.png'),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      "Covid test",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 11.4.sp,
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(const Book());
                        },
                        icon: const Icon(Icons.add))
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
                height: 5.95.h,
                width: 90.w,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.49.w, vertical: 1.7.h),
                      child: Image.asset('assets/blood-drop.png'),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      "Blood test",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 11.4.sp,
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(const Book());
                        },
                        icon: const Icon(Icons.add))
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
                height: 5.95.h,
                width: 90.w,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.49.w, vertical: 1.7.h),
                      child: Image.asset('assets/coronavirus.png'),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      "Covid test",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 11.4.sp,
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(const Book());
                        },
                        icon: const Icon(Icons.add))
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
                height: 5.95.h,
                width: 90.w,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.49.w, vertical: 1.7.h),
                      child: Image.asset('assets/coronavirus.png'),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    Text(
                      "Covid test",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 11.4.sp,
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    IconButton(
                        onPressed: () {
                          Get.to(const Book());
                        },
                        icon: const Icon(Icons.add))
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
