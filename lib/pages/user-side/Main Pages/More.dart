import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/user-side/Login/LoginM.dart';
import 'package:health4all/pages/user-side/track/track1.dart';
import 'package:sizer/sizer.dart';

class MorePg extends StatelessWidget {
  const MorePg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          Card(
            elevation: 10,
            child: GestureDetector(
              onTap: () {
                Get.to(Track1());
              },
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 6.2.h,
                width: 83.w,
                child: Row(
                  children: [
                    SizedBox(
                      width: 2.5.w,
                    ),
                    Text(
                      "Track your Report",
                      style: TextStyle(
                        color: fontblue2,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.4.sp,
                      ),
                    ),
                    SizedBox(
                      width: 35.w,
                    ),
                    const Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ),
            ),
          ).paddingOnly(left: 9.w, right: 9.w),
          SizedBox(
            height: 20.h,
          ),
          Center(child: Text('More functionality will be added here soon')),
        ],
      ),
    );
  }
}
