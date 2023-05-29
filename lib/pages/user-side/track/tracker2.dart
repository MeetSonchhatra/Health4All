import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/pages/user-side/Main%20Pages/Cart.dart';
import 'package:health4all/pages/user-side/Main%20Pages/HomeM.dart';
import 'package:health4all/pages/user-side/Main%20Pages/More.dart';
import 'package:health4all/pages/user-side/Main%20Pages/Reports.dart';
import 'package:health4all/pages/user-side/Search/Search.dart';
import 'package:health4all/pages/user-side/profile/profile.dart';
import 'package:health4all/pages/user-side/track/track3.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';
import '../../../../consts/colors.dart';
import '../Main Pages/Home.dart';
import '../Main Pages/Main Extra/Notifications.dart';

class Track2 extends StatefulWidget {
  const Track2({super.key});

  @override
  State<Track2> createState() => _Track2State();
}

class _Track2State extends State<Track2> {
  int myIndex = 0;
  int itemCount = 0;
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
                  IconButton(
                    icon: const Icon(Icons.notifications_none_outlined),
                    onPressed: () {
                      Get.to(const Notifications());
                    },
                    color: Colors.black,
                  ).marginOnly(left: 67.5.w, top: 0.h),
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
              height: 1.h,
            ),
            Stack(
              children: [
                Container(
                  height: 49.44.h,
                  width: 127.25.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Map2.png"),
                          fit: BoxFit.fill)),
                ),
                SingleChildScrollView(
                  child: Card(
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
                        height: 34.h,
                        width: 107.5.w,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 4.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Your Test is being delivered',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500),
                                ).marginOnly(left: 5.w),
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Container(
                              height: 16.h,
                              width: 90.w,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 0.5.h,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'ETA: 28/03/2023',
                                                  style: TextStyle(
                                                      fontSize: 11.4.sp,
                                                      color: Color.fromRGBO(
                                                          255, 194, 44, 1)),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 1.5.h,
                                            ),
                                            Row(
                                              children: [
                                                SizedBox(
                                                  height: 3.4.h,
                                                  width: 55.w,
                                                  child: Text(
                                                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            134, 133, 136, 1),
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 7.5),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 1.h,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                    height: 6.81.h,
                                                    width: 20.w,
                                                    child: Image.asset(
                                                        "assets/Tracker.png")),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      child: Container(
                                    height: 18.14.h,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 7.71.h,
                                          width: 17.w,
                                          child: Image.asset(
                                            "assets/Person2.png",
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Center(
                                            child: Text(
                                          'Satya .H',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w500),
                                        )),
                                        SizedBox(
                                          height: 0.5.h,
                                        ),
                                        Row(
                                          children: [
                                            SizedBox(
                                              width: 2.w,
                                            ),
                                            Icon(Icons.phone),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Card(
                                              elevation: 5,
                                              child: Container(
                                                height: 2.26.h,
                                                width: 8.w,
                                                decoration: BoxDecoration(
                                                    color: whiteColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            15)),
                                                child: Text(
                                                  '4.2',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 9.sp,
                                                      color: Color.fromRGBO(
                                                          16, 122, 21, 1)),
                                                ).paddingOnly(
                                                    left: 1.75.w, top: 0.34.h),
                                              ),
                                            )
                                          ],
                                        ).marginOnly(left: 3.75.w),
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        minimumSize: const Size(145, 44),
                                        backgroundColor: whiteColor,
                                        elevation: 8),
                                    onPressed: () {
                                      Get.to(Report());
                                    },
                                    child: Text(
                                      'Show Report',
                                      style: TextStyle(
                                          color: Color.fromRGBO(27, 195, 154, 1),
                                          fontSize: 12.4.sp),
                                    )),
                                SizedBox(
                                  width: 5.w,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        minimumSize: const Size(145, 44),
                                        backgroundColor: buttonblue,
                                        elevation: 8),
                                    onPressed: () {
                                      Get.to(Track3());
                                    },
                                    child: Text(
                                      'Invoice',
                                      style: TextStyle(
                                          color: whiteColor, fontSize: 12.4.sp),
                                    )),
                              ],
                            ).marginOnly(left: 10.w),
                          ],
                        ),
                      ),
                    ),
                  ).marginOnly(top: 28.34.h),
                ),
              ],
            ),
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
