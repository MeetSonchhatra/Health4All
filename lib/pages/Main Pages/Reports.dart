// ignore_for_file: file_names, unused_element, override_on_non_overriding_member, non_constant_identifier_names, prefer_final_fields, unused_field, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Main%20Pages/Main%20Extra/results.dart';
import 'package:sizer/sizer.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

final TextEditingController _searchText = TextEditingController();

class _ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4.h,
            ),
            Row(
              children: [
                const Text(
                  'Recent Reports',
                  style: TextStyle(
                      color: Color.fromRGBO(14, 13, 18, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 37.w,
                ),
                Stack(
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ).marginOnly(top: 13, left: 14),
                    IconButton(
                        padding: const EdgeInsets.all(0),
                        iconSize: 30,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.disabled_by_default_rounded,
                          color: Color.fromRGBO(255, 220, 224, 1),
                        )),
                  ],
                )
              ],
            ).marginOnly(left: 30),
            SizedBox(
              height: 2.h,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  Get.to(const Results());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
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
                        "Your Covid test results are here",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      const Text(
                        '11:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 12),
                      )
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomeM());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
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
                        "Your test has been",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        " delivered",
                        style: TextStyle(
                          color: Color.fromRGBO(6, 173, 132, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      const Text(
                        '9:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            ).paddingOnly(left: 9.w, right: 9.w),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                const Text(
                  'Yesterday',
                  style: TextStyle(
                      color: Color.fromRGBO(14, 13, 18, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 52.w,
                ),
                Stack(
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                        color: Colors.red,
                      ),
                    ).marginOnly(top: 13, left: 14),
                    IconButton(
                        padding: const EdgeInsets.all(0),
                        iconSize: 30,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.disabled_by_default_rounded,
                          color: Color.fromRGBO(255, 220, 224, 1),
                        )),
                  ],
                )
              ],
            ).marginOnly(left: 30),
            SizedBox(
              height: 2.h,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomeM());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 50,
                  width: 350,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5, top: 10),
                        child: Image.asset('assets/BioS.png'),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      const Text(
                        "Device has been ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        "delivered",
                        style: TextStyle(
                          color: Color.fromRGBO(6, 173, 132, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      const Text(
                        '9:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 12),
                      )
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomeM());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 50,
                  width: 350,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5, top: 10),
                        child: Image.asset('assets/BioS.png'),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      const Text(
                        "Device is in ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        "transit",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 194, 44, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      const Text(
                        '00:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 12),
                      )
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomeM());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
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
                        "Your test has been",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        " delivered",
                        style: TextStyle(
                          color: Color.fromRGBO(6, 173, 132, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      const Text(
                        '9:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            ).paddingOnly(left: 9.w, right: 9.w),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomeM());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 50,
                  width: 350,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5, top: 10),
                        child: Image.asset('assets/BioS.png'),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      const Text(
                        "Device has been ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      const Text(
                        "delivered",
                        style: TextStyle(
                          color: Color.fromRGBO(6, 173, 132, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      const Text(
                        '9:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            ).paddingOnly(left: 9.w, right: 9.w),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomeM());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
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
                        "Your Covid test results are here",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      const Text(
                        '11:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 12),
                      )
                    ],
                  ),
                ),
              ),
            ).paddingOnly(left: 9.w, right: 9.w),
            SizedBox(
              height: 1.h,
            ),
          ],
        ),
      ),
    ));
  }
}
