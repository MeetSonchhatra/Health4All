import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Login/LoginM.dart';
import 'package:health4all/pages/Main%20Pages/Cart.dart';
import 'package:health4all/pages/Main%20Pages/Home.dart';
import 'package:health4all/pages/Main%20Pages/HomeM.dart';
import 'package:health4all/pages/Main%20Pages/More.dart';
import 'package:health4all/pages/Main%20Pages/Reports.dart';
import 'package:health4all/pages/profile/editprofile.dart';
import 'package:health4all/pages/profile/geninfo.dart';
import 'package:health4all/pages/profile/healthinfo.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int myIndex = 0;
  List pages = [const HomePg(), const Report(), const Cart(), const MorePg()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 2,
          automaticallyImplyLeading: false,
          toolbarHeight: 22.7.h,
          flexibleSpace: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromRGBO(30, 59, 141, 1),
                  Color.fromRGBO(7, 32, 60, 1),
                  Color.fromRGBO(1, 82, 168, 1)
                ], stops: [
                  0.05,
                  0.85,
                  0.1
                ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_circle_left),
                          color: textfieldGrey,
                          iconSize: 30,
                          onPressed: () {
                            Get.to(const HomePg());
                          },
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'My Profile',
                          style: TextStyle(
                              color: Color.fromRGBO(209, 207, 214, 1),
                              fontSize: 12.4.sp),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 25.w,
                              height: 11.34.h,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 4, color: Colors.white),
                                  boxShadow: [
                                    const BoxShadow(
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        color: Colors.white)
                                  ],
                                  shape: BoxShape.circle,
                                  image: const DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/person.png"),
                                  )),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 4.54.h,
                                width: 10.w,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    // border: Border.all(
                                    //     width: 4, color: ),
                                    color: buttonblue),
                                child: const Icon(
                                  LineIcons.camera,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Container(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Cody Fisher',
                                  style: TextStyle(
                                      fontSize: 15.6.sp,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  'cody.fisher@example.com',
                                  style: TextStyle(
                                      fontSize: 12.4.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 2.h),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(6.25.w, 3.h),
                                      side: const BorderSide(
                                          width: 1, color: Colors.white),
                                      backgroundColor: buttonblue,
                                      elevation: 0,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      Get.to(const EditProfile());
                                    },
                                    child: Wrap(
                                      children: [
                                        const Icon(
                                          Icons.edit,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Text(
                                          'Edit Profile',
                                          style: TextStyle(fontSize: 9.sp),
                                        )
                                      ],
                                    )),
                              ]),
                        )
                      ],
                    ).marginOnly(left: 5.w)
                  ],
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    Get.to(const HealthInfo());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.health_and_safety,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Health Information",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 19.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    Get.to(const GenInfo());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.person,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "General Information",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 17.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    // Get.to(HomePg());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.account_balance_wallet_rounded,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Subscription",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    // Get.to(HomePg());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.handshake,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Term and Conditions",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    // Get.to(HomePg());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.settings,
                            color: fontblue2,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Settings",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 38.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
              SizedBox(
                height: 3.34.h,
              ),
              Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    Get.to(LoginM());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 6.12.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.49.w, vertical: 1.7.h),
                          child: Icon(
                            Icons.power_settings_new,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          width: 2.5.w,
                        ),
                        Text(
                          "Log Out",
                          style: TextStyle(
                            color: fontblue2,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.4.sp,
                          ),
                        ),
                        SizedBox(
                          width: 38.w,
                        ),
                        const Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
              ).paddingOnly(left: 9.w, right: 9.w),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                myIndex = index;
              });
            },
            currentIndex: myIndex,
            items: [
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(LineIcons.home),
                  onPressed: () {
                    Get.to(const HomePg());
                  },
                  color: const Color.fromRGBO(7, 32, 60, 1),
                ),
                label: 'Home',
                backgroundColor: whiteColor,
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(LineIcons.book),
                  onPressed: () {
                    Get.to(const Report());
                  },
                  color: const Color.fromRGBO(7, 32, 60, 1),
                ),
                label: 'Reports',
                backgroundColor: whiteColor,
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(LineIcons.shoppingCart),
                  onPressed: () {
                    Get.to(const Cart());
                  },
                  color: const Color.fromRGBO(7, 32, 60, 1),
                ),
                label: 'MyCart',
                backgroundColor: whiteColor,
              ),
              BottomNavigationBarItem(
                icon: IconButton(
                  icon: const Icon(LineIcons.addressBookAlt),
                  onPressed: () {
                    Get.to(const MorePg());
                  },
                  color: const Color.fromRGBO(7, 32, 60, 1),
                ),
                label: 'More',
                backgroundColor: whiteColor,
              ),
            ]),
      ),
    );
  }
}
