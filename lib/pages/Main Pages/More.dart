import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Login/LoginM.dart';
import 'package:health4all/pages/track/track1.dart';
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
                height: 54,
                width: 358,
                child: Row(
                  children: [
                    SizedBox(
                      width: 2.5.w,
                    ),
                    const Text(
                      "Track your Report",
                      style: TextStyle(
                        color: fontblue2,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
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
