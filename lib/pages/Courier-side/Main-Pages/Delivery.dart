import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:health4all/pages/Courier-side/Main-Pages/Main-Extra/delivery2.dart';
import 'package:sizer/sizer.dart';

import '../../../consts/colors.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 1.h,
            ),
            Stack(
              children: [
                Container(
                  height: 49.44.h,
                  width: 127.25.w,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Map2.png"),
                          fit: BoxFit.fill)),
                ),
                Card(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60)),
                  child: GestureDetector(
                    onTap: () {
                      // Get.to(HomePg());
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: whiteColor,
                      ),
                      height: 49.h,
                      width: 100.w,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 2.h,
                          ),
                          Container(
                            height: 12.h,
                            width: 100.w,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    SizedBox(
                                        height: 8.h,
                                        width: 18.w,
                                        child: Image.asset(
                                          "assets/Person2.png",
                                        )),
                                    Column(
                                      children: [
                                        SizedBox(
                                          height: 0.5.h,
                                        ),
                                        Text(
                                          'Test Client:',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 9.sp,
                                              color: Color.fromRGBO(
                                                  63, 81, 81, 1)),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Text(
                                          'Chirag H.',
                                          style: TextStyle(
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          height: 1.2.h,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'PIN:',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11.4.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              ' 0 0 2 5',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      1, 82, 168, 1),
                                                  fontSize: 11.4.sp,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ).marginOnly(left: 5.w),
                                      ],
                                    ).marginOnly(left: 15.w),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 35,
                                          width: 35,
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                                Color.fromRGBO(244, 170, 21, 1),
                                            child: IconButton(
                                              onPressed: () {},
                                              iconSize: 16,
                                              icon: Icon(
                                                Icons.message_outlined,
                                                color: whiteColor,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 35,
                                          width: 35,
                                          child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                                Color.fromRGBO(16, 122, 21, 1),
                                            child: IconButton(
                                              onPressed: () {},
                                              iconSize: 16,
                                              icon: Icon(
                                                Icons.phone,
                                                color: whiteColor,
                                              ),
                                            ),
                                          ),
                                        ).marginOnly(right: 10, left: 10),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25)),
                                                minimumSize: const Size(50, 25),
                                                backgroundColor: Color.fromRGBO(
                                                    255, 194, 44, 1),
                                                elevation: 8),
                                            onPressed: () {},
                                            child: Text(
                                              'ETA: 45 Min',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.4.sp),
                                            )),
                                      ],
                                    ).marginOnly(left: 38.w),
                                  ],
                                ),
                              ],
                            ).marginOnly(left: 5.w),
                          ),
                          Container(
                            height: 14.h,
                            width: 100.w,
                            child: Row(
                              children: [
                                Container(
                                  height: 14.h,
                                  width: 47.w,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.location_on),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Drop 1 : ',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        14, 13, 18, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 11.4.sp),
                                              )
                                            ],
                                          ).marginOnly(left: 1.2.w),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 6.5.h,
                                                width: 35.w,
                                                child: Text(
                                                  'B-20, Indrapasth gulmor, near ITC narmada,132 ft ring road, Vastrapur, Ahmedabad.',
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          63, 81, 81, 1),
                                                      fontSize: 9.sp),
                                                ).marginOnly(left: 2.w),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '09:00am drop off',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        134, 133, 136, 1)),
                                              )
                                            ],
                                          ).marginOnly(left: 1.2.w)
                                        ],
                                      ),
                                    ],
                                  ).marginOnly(left: 5.w),
                                ),
                                Container(
                                  height: 14.h,
                                  width: 47.w,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.location_on),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Drop 2 : ',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        14, 13, 18, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 11.4.sp),
                                              )
                                            ],
                                          ).marginOnly(left: 1.2.w),
                                          SizedBox(
                                            height: 1.25.h,
                                          ),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 5.5.h,
                                                width: 35.w,
                                                child: Text(
                                                  'Sharda Laboratory, Vastrapur, Ahmedabad.',
                                                  maxLines: 4,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          63, 81, 81, 1),
                                                      fontSize: 9.sp),
                                                ).marginOnly(left: 2.w),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '1:30pm drop off',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        134, 133, 136, 1)),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(
                            color: Color.fromRGBO(234, 233, 234, 1),
                            thickness: 1,
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            children: [
                              Icon(Icons.credit_card),
                              SizedBox(
                                width: 1.w,
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Rs: 1899',
                                    style: TextStyle(
                                      color: Color.fromRGBO(14, 13, 18, 1),
                                      fontSize: 11.4.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    'Paid - UPI',
                                    style: TextStyle(
                                      color: Color.fromRGBO(6, 173, 132, 1),
                                      fontSize: 11.4.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ).marginOnly(left: 0.5.w),
                                ],
                              ),
                              SizedBox(
                                width: 35.w,
                              ),
                              TextButton(
                                onPressed: () {
                                  //Get.to(const Track2());
                                },
                                child: Text(
                                  'Switch',
                                  style: TextStyle(
                                      color: Color.fromRGBO(151, 117, 105, 1),
                                      fontSize: 11.4.sp,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ).marginOnly(left: 10.w),
                          SizedBox(
                            height: 1.h,
                          ),
                          Divider(
                            thickness: 1,
                            color: Color.fromRGBO(234, 233, 234, 1),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 5.w,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      side: const BorderSide(
                                        width: 1.0,
                                        color: Color.fromRGBO(6, 173, 132, 1),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      minimumSize: const Size(145, 44),
                                      backgroundColor: whiteColor,
                                      elevation: 8),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Customer Care',
                                    style: TextStyle(
                                        color: Color.fromRGBO(6, 173, 132, 1),
                                        fontSize: 11.4.sp),
                                  )),
                              SizedBox(
                                width: 10.w,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      minimumSize: const Size(145, 44),
                                      backgroundColor:
                                          Color.fromRGBO(6, 173, 132, 1),
                                      elevation: 8),
                                  onPressed: () {
                                    Get.to(Delivery2());
                                  },
                                  child: Text(
                                    'Collected',
                                    style: TextStyle(
                                        color: whiteColor, fontSize: 11.4.sp),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ).marginOnly(top: 28.34.h),
              ],
            ),
            SizedBox(
              height: 11.34.h,
            ),
          ],
        ),
      ),
    );
  }
}
