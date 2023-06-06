// ignore_for_file: file_names, unused_element, override_on_non_overriding_member, non_constant_identifier_names, prefer_final_fields, unused_field, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/user-side/Main%20Pages/Main%20Extra/results.dart';
import 'package:sizer/sizer.dart';

import '../../../api.dart';
import '../../../model/basicuserdetailmodel.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _ReportState();
}

final TextEditingController _searchText = TextEditingController();

class _ReportState extends State<Report> {
  String user_status = '';
  void getdata() async {
    Basicuserdetail_Model data =
        await basicuserdetailsApi().basicuserdetailsList();
    setState(() {
      user_status = data.data![0].userStatus.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      body: Column(
        children: [
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              Text(
                'Recent Reports',
                style: TextStyle(
                    color: const Color.fromRGBO(14, 13, 18, 1),
                    fontSize: 12.4.sp,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ).marginOnly(left: 7.5.w),
          SizedBox(
            height: 2.h,
          ),
          CardDetail(),
          // Card(
          //   elevation: 5,
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(60)),
          //   child: GestureDetector(
          //     onTap: () {
          //       Get.to(const Results());
          //     },
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: whiteColor,
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       height: 5.67.h,
          //       width: 82.w,
          //       child: Row(
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.symmetric(
          //                 horizontal: 3.5.w, vertical: 1.7.h),
          //             child: Image.asset('assets/blood-drop.png'),
          //           ),
          //           SizedBox(
          //             width: 1.w,
          //           ),
          //           Text(
          //             "Your test has been",
          //             style: TextStyle(
          //               color: Colors.black,
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           Text(
          //             user_status,
          //             style: TextStyle(
          //               color: const Color.fromRGBO(6, 173, 132, 1),
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           SizedBox(
          //             width: 7.w,
          //           ),
          //           Text(
          //             '9:11am',
          //             style: TextStyle(
          //                 color: const Color.fromRGBO(197, 197, 197, 1),
          //                 fontSize: 9.sp),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ).paddingOnly(left: 9.w, right: 9.w),
          // SizedBox(
          //   height: 2.h,
          // ),
          // Row(
          //   children: [
          //     Text(
          //       'A week ago',
          //       style: TextStyle(
          //           color: const Color.fromRGBO(14, 13, 18, 1),
          //           fontSize: 12.4.sp,
          //           fontWeight: FontWeight.w500),
          //     ),
          //   ],
          // ).marginOnly(left: 7.5.w),
          // SizedBox(
          //   height: 2.h,
          // ),
          // Card(
          //   elevation: 5,
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(60)),
          //   child: GestureDetector(
          //     onTap: () {
          //       Get.to(const Results());
          //     },
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: whiteColor,
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       height: 5.67.h,
          //       width: 82.w,
          //       child: Row(
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.only(bottom: 0.56.h, top: 1.13.h),
          //             child: Image.asset('assets/BioS.png'),
          //           ),
          //           SizedBox(
          //             width: 1.w,
          //           ),
          //           Text(
          //             "Device has been ",
          //             style: TextStyle(
          //               color: Colors.black,
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           Text(
          //             user_status,
          //             style: TextStyle(
          //               color: const Color.fromRGBO(6, 173, 132, 1),
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           SizedBox(
          //             width: 4.w,
          //           ),
          //           Text(
          //             '28/02/2023',
          //             style: TextStyle(
          //                 color: const Color.fromRGBO(197, 197, 197, 1),
          //                 fontSize: 9.sp),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ).paddingOnly(left: 9.w, right: 9.w),
          // SizedBox(
          //   height: 1.h,
          // ),
          // Card(
          //   elevation: 5,
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(60)),
          //   child: GestureDetector(
          //     onTap: () {
          //       Get.to(const Results());
          //     },
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: whiteColor,
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       height: 5.67.h,
          //       width: 82.w,
          //       child: Row(
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.only(bottom: 0.56.h, top: 1.13.h),
          //             child: Image.asset('assets/BioS.png'),
          //           ),
          //           SizedBox(
          //             width: 1.w,
          //           ),
          //           Text(
          //             "Device is in ",
          //             style: TextStyle(
          //               color: Colors.black,
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           Text(
          //             user_status,
          //             style: TextStyle(
          //               color: const Color.fromRGBO(255, 194, 44, 1),
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           SizedBox(
          //             width: 16.w,
          //           ),
          //           Text(
          //             '28/02/2023',
          //             style: TextStyle(
          //                 color: const Color.fromRGBO(197, 197, 197, 1),
          //                 fontSize: 9.sp),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ).paddingOnly(left: 9.w, right: 9.w),
          // SizedBox(
          //   height: 1.h,
          // ),
          // Card(
          //   elevation: 5,
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(60)),
          //   child: GestureDetector(
          //     onTap: () {
          //       Get.to(const Results());
          //     },
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: whiteColor,
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       height: 5.67.h,
          //       width: 82.w,
          //       child: Row(
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.only(
          //                 bottom: 0.56.h, top: 1.13.h, left: 10),
          //             child: Image.asset('assets/blood-drop.png'),
          //           ),
          //           SizedBox(
          //             width: 1.w,
          //           ),
          //           Text(
          //             "Your test has been",
          //             style: TextStyle(
          //               color: Colors.black,
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           Text(
          //             user_status,
          //             style: TextStyle(
          //               color: const Color.fromRGBO(6, 173, 132, 1),
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           SizedBox(
          //             width: 2.w,
          //           ),
          //           Text(
          //             '28/02/2023',
          //             style: TextStyle(
          //                 color: const Color.fromRGBO(197, 197, 197, 1),
          //                 fontSize: 9.sp),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ).paddingOnly(left: 9.w, right: 9.w),
          // SizedBox(
          //   height: 1.h,
          // ),
          // Card(
          //   elevation: 5,
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(60)),
          //   child: GestureDetector(
          //     onTap: () {
          //       Get.to(const Results());
          //     },
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: whiteColor,
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       height: 5.67.h,
          //       width: 82.w,
          //       child: Row(
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.only(bottom: 0.56.h, top: 1.13.h),
          //             child: Image.asset('assets/BioS.png'),
          //           ),
          //           SizedBox(
          //             width: 1.w,
          //           ),
          //           Text(
          //             "Device has been ",
          //             style: TextStyle(
          //               color: Colors.black,
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           Text(
          //             user_status,
          //             style: TextStyle(
          //               color: const Color.fromRGBO(6, 173, 132, 1),
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           SizedBox(
          //             width: 2.w,
          //           ),
          //           Text(
          //             '28/02/2023',
          //             style: TextStyle(
          //                 color: const Color.fromRGBO(197, 197, 197, 1),
          //                 fontSize: 9.sp),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ).paddingOnly(left: 9.w, right: 9.w),
          // SizedBox(
          //   height: 1.h,
          // ),
          // Card(
          //   elevation: 5,
          //   shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(60)),
          //   child: GestureDetector(
          //     onTap: () {
          //       Get.to(const Results());
          //     },
          //     child: Container(
          //       decoration: BoxDecoration(
          //         color: whiteColor,
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       height: 5.67.h,
          //       width: 82.w,
          //       child: Row(
          //         children: [
          //           Padding(
          //             padding: EdgeInsets.symmetric(
          //                 horizontal: 3.5.w, vertical: 1.7.h),
          //             child: Image.asset('assets/coronavirus.png'),
          //           ),
          //           SizedBox(
          //             width: 1.w,
          //           ),
          //           Text(
          //             "Your Covid test results",
          //             style: TextStyle(
          //               color: Colors.black,
          //               fontWeight: FontWeight.w400,
          //               fontSize: 11.4.sp,
          //             ),
          //           ),
          //           SizedBox(
          //             width: 10.w,
          //           ),
          //           Text(
          //             '28/02/2023',
          //             style: TextStyle(
          //                 color: const Color.fromRGBO(197, 197, 197, 1),
          //                 fontSize: 9.sp),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ).paddingOnly(left: 9.w, right: 9.w),
          // SizedBox(
          //   height: 1.h,
          // ),
        ],
      ),
    ));
  }
}

class CardDetail extends StatelessWidget {
  const CardDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Basicuserdetail_Model>(
      future: basicuserdetailsApi().basicuserdetailsList(),
      builder: ((context, snapshot) {
        if (snapshot.hasData) {
          return Expanded(
            child: ListView.builder(
                itemCount: snapshot.data!.data!.length,
                itemBuilder: (context, index) {
                  return Card(
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
                        height: 5.67.h,
                        width: 82.w,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.5.w, vertical: 1.7.h),
                              child: Image.asset('assets/coronavirus.png'),
                            ),
                            SizedBox(
                              width: 1.w,
                            ),
                            Text(
                              "Your test has been ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 11.4.sp,
                              ),
                            ),
                            Text(
                              snapshot.data!.data![index].userStatus.toString(),
                              style: TextStyle(
                                color: const Color.fromRGBO(6, 173, 132, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: 11.4.sp,
                              ),
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            Text(
                              '11:11am',
                              style: TextStyle(
                                  color: const Color.fromRGBO(197, 197, 197, 1),
                                  fontSize: 9.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                  ).paddingOnly(left: 9.w, right: 9.w, bottom: 20);
                }),
          );
        } else if (snapshot.hasError) {
          return Text('Error: ${snapshot.error}');
        }
        return CircularProgressIndicator();
      }),
    );
  }
}
