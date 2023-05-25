import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Main%20Pages/Cart.dart';
import 'package:health4all/pages/Main%20Pages/Home.dart';
import 'package:health4all/pages/Main%20Pages/HomeM.dart';
import 'package:health4all/pages/Main%20Pages/More.dart';
import 'package:health4all/pages/Main%20Pages/Reports.dart';
import 'package:health4all/pages/Search/book.dart';
import 'package:health4all/pages/profile/profile.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../Main Pages/Main Extra/Notifications.dart';
import 'Search.dart';

class LabMain extends StatefulWidget {
  const LabMain({super.key});

  @override
  State<LabMain> createState() => _LabMainState();
}

final TextEditingController _searchText = TextEditingController();

class _LabMainState extends State<LabMain> {
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
              height: 2.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const LabMain());
              },
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(0),
                    height: 27.78.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/bgimg.png"),
                            fit: BoxFit.fill)),
                  ).marginOnly(left: 9.w, right: 9.w),
                  Container(
                    height: 9.2.h,
                    width: 76.5.w,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        color: buttonblue),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Sharda Laboratory',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15.6.sp),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              height: 2.26.h,
                              width: 8.w,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Text(
                                '4.2',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(16, 122, 21, 1)),
                              ).paddingOnly(left: 7, top: 3),
                            )
                          ],
                        ).marginOnly(left: 5.w, right: 5.w),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'Gh-5, Gandhinagar, 5km away',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(255, 255, 255, 0.61)),
                            ),
                          ],
                        ).marginOnly(left: 5.w, right: 5.w)
                      ],
                    ),
                  ).marginOnly(top: 18.7.h, left: 11.25.w)
                ],
              ),
            ),
            Card(
              elevation: 5,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Container(
                padding: const EdgeInsets.all(0),
                height: 7.93.h,
                width: 75.25.w,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Row(
                  children: [
                    SizedBox(
                      width: 4.w,
                    ),
                    const Icon(
                      Icons.location_on_outlined,
                      size: 25,
                      color: Color.fromRGBO(7, 32, 60, 1),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    SizedBox(
                      height: 3.2.h,
                      width: 27.w,
                      child: Text(
                        "Plot No 382, near Trupti Ice-cream Parlour, Sector 16, Gandhinagar, Gujarat 382016",
                        // overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        style: TextStyle(
                            color: Color.fromRGBO(7, 32, 60, 1),
                            fontSize: 9.sp),
                      ).marginOnly(left: 5.w),
                    ),
                  ],
                ),
              ),
            ).marginOnly(left: 7.w, right: 7.w, top: 0),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Text(
                  'Choose a Test',
                  style: TextStyle(
                      color: Color.fromRGBO(4, 6, 60, 1),
                      fontSize: 12.4.sp,
                      fontWeight: FontWeight.w500),
                )
              ],
            ).marginOnly(left: 11.25.w),
            SizedBox(
              height: 2.h,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomePg());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 5.9.h,
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomePg());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 5.9.h,
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
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomePg());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 5.9.h,
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
            const SizedBox(
              height: 100,
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
