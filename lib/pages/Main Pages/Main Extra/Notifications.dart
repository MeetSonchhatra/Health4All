// ignore_for_file: file_names, unused_element, override_on_non_overriding_member, non_constant_identifier_names, prefer_final_fields, unused_field, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Main%20Pages/Cart.dart';
import 'package:health4all/pages/Main%20Pages/Home.dart';
import 'package:health4all/pages/Main%20Pages/HomeM.dart';
import 'package:health4all/pages/Main%20Pages/Main%20Extra/results.dart';
import 'package:health4all/pages/Main%20Pages/More.dart';
import 'package:health4all/pages/Main%20Pages/Reports.dart';
import 'package:health4all/pages/profile/profile.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../Search/Search.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

final TextEditingController _searchText = TextEditingController();

class _NotificationsState extends State<Notifications> {
  int myIndex = 0;
  @override
  bool is_checked = false;

  @override
  bool is_check = false;

  int num = 0;
  var padding = const EdgeInsets.symmetric(horizontal: 18, vertical: 5);
  double gap = 10;
  int _index = 0;
  final _pageData = [
    const HomeM(),
    const Report(),
    const Cart(),
    const MorePg()
  ];
  PageController controller = PageController();
  final _area = [
    "Vastrapur,Ahemdabad",
    "Thaltej,Ahemdabad",
    "Chankheda,Ahemdabad",
    "Sabarmati,Ahemdabad",
    "Bopal,Ahemdabad",
    "Ambli,Ahemdabad",
    "SG Highway,Ahemdabad"
  ];
  String? _selectedarea = "Vastrapur,Ahemdabad";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 2,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        toolbarHeight: 19.3.h,
        flexibleSpace: Stack(
          children: [
            Column(
              children: [
                Stack(children: [
                  SizedBox(
                    width: 40.w,
                    child: DropdownButtonFormField(
                      style: TextStyle(
                          fontSize: 9.sp, color: Color.fromRGBO(3, 9, 19, 1)),
                      value: _selectedarea,
                      items: _area
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedarea = val as String;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: buttonblue,
                      ),
                      dropdownColor: lightblue,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(250, 250, 250, 1))),
                        labelText: "Location",
                        labelStyle: TextStyle(
                            fontSize: 8.sp,
                            color: Color.fromRGBO(197, 197, 197, 1)),
                      ),
                    ),
                  ),
                  Container(
                    height: 3.4.h,
                    width: 7.w,
                    decoration: BoxDecoration(
                        color: buttonblue,
                        borderRadius: BorderRadius.circular(10)),
                    child: IconButton(
                      onPressed: () {
                        Get.to(HomePg());
                      },
                      padding: const EdgeInsets.all(0),
                      icon: const Icon(Icons.notifications_none_outlined),
                      color: Colors.white,
                    ),
                  ).marginOnly(left: 67.w, top: 2.3.h),
                ]).marginOnly(left: 0, top: 2.3.h),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                    child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 0;
                        });
                        Get.to(const Profile());
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/person.png",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      width: 70.w,
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      child: TextField(
                        readOnly: true,
                        onTap: () {
                          Get.to(const Search());
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.search),
                            prefixIconColor:
                                const Color.fromRGBO(197, 197, 197, 1),
                            hintText: "Search Test or Laboratory",
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10),
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(197, 197, 197, 1),
                                fontSize: 9.sp),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(60),
                                borderSide:
                                    const BorderSide(color: Colors.white))),
                      ),
                    )
                  ],
                ).marginOnly(left: 5.w))
              ],
            ),
          ],
        ),
      ),
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  'Recent Notifications',
                  style: TextStyle(
                      color: Color.fromRGBO(14, 13, 18, 1),
                      fontSize: 12.4.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 35.w,
                ),
                Stack(
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
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
            ).marginOnly(left: 7.5.w),
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
                        "Your Covid test results are here",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 2.2.w,
                      ),
                      Text(
                        '11:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 9.sp),
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
                  Get.to(Results());
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
                        child: Image.asset('assets/blood-drop.png'),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Your test has been",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      Text(
                        " delivered",
                        style: TextStyle(
                          color: Color.fromRGBO(6, 173, 132, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(
                        '9:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 9.sp),
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
                Text(
                  'Yesterday',
                  style: TextStyle(
                      color: Color.fromRGBO(14, 13, 18, 1),
                      fontSize: 12.4.sp,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 52.w,
                ),
                Stack(
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
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
            ).marginOnly(left: 7.5.w),
            SizedBox(
              height: 2.h,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  Get.to(Results());
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
                        padding: EdgeInsets.only(bottom: 0.56.h, top: 1.13.h),
                        child: Image.asset('assets/BioS.png'),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Device has been ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      Text(
                        "delivered",
                        style: TextStyle(
                          color: Color.fromRGBO(6, 173, 132, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(
                        '09:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 9.sp),
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
                  Get.to(Results());
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
                        padding: EdgeInsets.only(bottom: 0.56.h, top: 1.13.h),
                        child: Image.asset('assets/BioS.png'),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Device is in ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      Text(
                        "transit",
                        style: TextStyle(
                          color: Color.fromRGBO(255, 194, 44, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 19.w,
                      ),
                      Text(
                        '00:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 9.sp),
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
                  Get.to(Results());
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
                        padding: EdgeInsets.only(
                            bottom: 0.56.h, top: 1.13.h, left: 10),
                        child: Image.asset('assets/blood-drop.png'),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Your test has been",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      Text(
                        " delivered",
                        style: TextStyle(
                          color: Color.fromRGBO(6, 173, 132, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        '9:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 9.sp),
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
                  Get.to(Results());
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
                        padding: EdgeInsets.only(bottom: 0.56.h, top: 1.13.h),
                        child: Image.asset('assets/BioS.png'),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Device has been ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      Text(
                        "delivered",
                        style: TextStyle(
                          color: Color.fromRGBO(6, 173, 132, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(
                        '9:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 9.sp),
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
                  Get.to(Results());
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
                        "Your Covid test results are here ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      Text(
                        '11:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 9.sp),
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
                  Get.to(Results());
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
                        child: Image.asset('assets/blood-drop.png'),
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Your test has been",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      Text(
                        " delivered",
                        style: TextStyle(
                          color: Color.fromRGBO(6, 173, 132, 1),
                          fontWeight: FontWeight.w400,
                          fontSize: 11.4.sp,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      Text(
                        '9:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 9.sp),
                      )
                    ],
                  ),
                ),
              ),
            ).paddingOnly(left: 9.w, right: 9.w),
            SizedBox(
              height: 17.h,
            )
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
    ));
  }
}
