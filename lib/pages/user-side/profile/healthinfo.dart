import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/model/user_display.dart';
import 'package:health4all/pages/user-side/Main%20Pages/Home.dart';
import 'package:health4all/pages/user-side/Main%20Pages/More.dart';
import 'package:health4all/pages/user-side/profile/editprofile.dart';
import 'package:health4all/pages/user-side/profile/profile.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../../api.dart';
import '../Main Pages/Cart.dart';
import '../Main Pages/Reports.dart';

class HealthInfo extends StatefulWidget {
  const HealthInfo({super.key});

  @override
  State<HealthInfo> createState() => _HealthInfoState();
}

class _HealthInfoState extends State<HealthInfo> {
  String blood_group = '';
  String health_cond = '';

  void getdata() async {
    User_display_Model data = await userdisplayApi().userdisplayList();
    //  final dataArray = data['health_candition'] as List<dynamic>;
    setState(() {
      blood_group = data.data![0].bloodGroup.toString();
      health_cond = data.data![0].healthCandition.toString();
    });
  }

  @override
  void initState() {
    super.initState();
    getdata();
  }
  int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: whiteColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_circle_left),
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                Get.to(const Profile());
              },
            )),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 30.25.w,
                        height: 14.75.h,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: whiteColor),
                            boxShadow: const [
                              BoxShadow(
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
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Text(
                      'Health Information',
                      style: TextStyle(
                          fontSize: 12.4.sp, color: const Color.fromRGBO(5, 27, 98, 1)),
                    ).marginOnly(left: 20),
                    SizedBox(
                      width: 29.w,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(25, 25),
                          side: const BorderSide(width: 1, color: Colors.white),
                          backgroundColor: buttonblue,
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(38),
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
                            const Text(
                              'Edit',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: Color.fromRGBO(197, 197, 197, 1),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Health Condition",
                      style: TextStyle(
                        color: const Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.h,
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    height: 5.95.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Text(
                          health_cond,
                          style: TextStyle(
                              color: const Color.fromRGBO(63, 81, 81, 1),
                              fontSize: 12.4.sp),
                        ).marginOnly(left: 10.w)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: Color.fromRGBO(197, 197, 197, 1),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Blood Group",
                      style: TextStyle(
                        color: const Color.fromRGBO(197, 197, 197, 1),
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.h,
                ),
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                    height: 5.95.h,
                    width: 90.w,
                    child: Row(
                      children: [
                        Text(
                          blood_group,
                          style: TextStyle(
                              color: const Color.fromRGBO(63, 81, 81, 1),
                              fontSize: 12.4.sp),
                        ).marginOnly(left: 10.w)
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(145, 44),
                          backgroundColor: whiteColor,
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                            side: const BorderSide(
                              width: 1.0,
                              color: buttonblue,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Cancel',
                          style: TextStyle(color: buttonblue, fontSize: 12.4.sp),
                        )),
                    SizedBox(
                      width: 8.w,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(145, 44),
                          backgroundColor: buttonblue,
                          elevation: 0,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(50),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Save Changes',
                          style: TextStyle(fontSize: 12.4.sp),
                        )),
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
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
