import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Main%20Pages/Cart.dart';
import 'package:health4all/pages/Main%20Pages/Home.dart';
import 'package:health4all/pages/Main%20Pages/HomeM.dart';
import 'package:health4all/pages/Login/LoginM.dart';
import 'package:health4all/pages/Main%20Pages/More.dart';
import 'package:health4all/pages/Main%20Pages/Reports.dart';
import 'package:health4all/pages/Search/Lab.dart';
import 'package:health4all/pages/Search/Search.dart';
import 'package:health4all/pages/profile/profile.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../Main Pages/Main Extra/Notifications.dart';

class SearchLab extends StatefulWidget {
  const SearchLab({super.key});

  @override
  State<SearchLab> createState() => _SearchLabState();
}

final TextEditingController _searchText = TextEditingController();

class _SearchLabState extends State<SearchLab> {
  int myIndex = 0;
  @override
  bool is_checked = false;

  @override
  bool is_check = true;

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
        toolbarHeight: 19.2.h,
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
      body: Column(
        children: [
          Card(
            elevation: 20,
            child: Container(
              width: 75.w,
              height: 54.4.h,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Search By:',
                        style:
                            TextStyle(color: Colors.black, fontSize: 11.4.sp),
                      ).marginOnly(left: 5.w, top: 2.27.h),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(
                                width: 1.0, color: Colors.grey),
                          ),
                          checkColor: Colors.green,
                          activeColor: Colors.white,
                          value: is_checked,
                          onChanged: (val) {
                            setState(() {
                              is_checked = val!;
                              Get.to(const Search());
                            });
                          }),
                      Text(
                        'Tests',
                        style: TextStyle(
                            color: Color.fromRGBO(63, 81, 81, 1),
                            fontSize: 11.4.sp),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Checkbox(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          side: MaterialStateBorderSide.resolveWith(
                            (states) => const BorderSide(
                                width: 1.0, color: Colors.green),
                          ),
                          checkColor: Colors.green,
                          activeColor: Colors.white,
                          value: is_check,
                          onChanged: (val) {
                            setState(() {
                              is_check = val!;
                              Get.to(const Search());
                            });
                          }),
                      Text(
                        'Laboratory',
                        style: TextStyle(
                            color: Color.fromRGBO(63, 81, 81, 1),
                            fontSize: 11.4.sp),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.grey,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(Lab());
                    },
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Top  Laboratory:',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 11.4.sp),
                            ).marginOnly(left: 5.w, top: 2.27.h),
                          ],
                        ),
                        SizedBox(
                          height: 1.7.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              LineIcons.clipboard,
                              size: 20,
                              color: buttonblue,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              'Sharda Laboratory',
                              style: TextStyle(
                                  fontSize: 11.4.sp,
                                  color: Color.fromRGBO(4, 6, 60, 1)),
                            )
                          ],
                        ).marginOnly(left: 5.w),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              LineIcons.clipboard,
                              size: 20,
                              color: buttonblue,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              'Sterling Laboratory',
                              style: TextStyle(
                                  fontSize: 11.4.sp,
                                  color: Color.fromRGBO(4, 6, 60, 1)),
                            )
                          ],
                        ).marginOnly(left: 5.w),
                        const Divider(
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Row(
                          children: [
                            const Icon(
                              LineIcons.clipboard,
                              size: 20,
                              color: buttonblue,
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Text(
                              'K.D. Laboratory',
                              style: TextStyle(
                                  fontSize: 11.4.sp,
                                  color: Color.fromRGBO(4, 6, 60, 1)),
                            )
                          ],
                        ).marginOnly(left: 5.w),
                        const Divider(
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ).marginOnly(top: 3.4.h, left: 10.w),
        ],
      ),
// BOttom nav bar
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

      //   bottomNavigationBar: SafeArea(
      //     child: Container(
      //       decoration: BoxDecoration(
      //           //  border: Border.all(color: Colors.black, width: 2),
      //           color: whiteColor,

      //           // borderRadius: const BorderRadius.all(Radius.circular(100)),
      //           boxShadow: [
      //             BoxShadow(
      //               spreadRadius: -10,
      //               blurRadius: 60,
      //               color: Colors.black.withOpacity(0.4),
      //               offset: const Offset(0, 25),
      //             )
      //           ]),
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: GNav(
      //           curve: Curves.fastOutSlowIn,
      //           duration: const Duration(milliseconds: 900),
      //           tabs: [
      //             GButton(
      //               gap: gap,
      //               icon: LineIcons.home,
      //               iconColor: buttonblue,
      //               iconActiveColor: Colors.white,
      //               text: 'Home',
      //               textSize: 12.sp,
      //               textColor: Colors.white,
      //               backgroundColor: buttonblue,
      //               iconSize: 24,
      //               padding: padding,
      //             ),
      //             GButton(
      //               gap: gap,
      //               icon: LineIcons.book,
      //               iconColor: buttonblue,
      //               iconActiveColor: Colors.white,
      //               text: 'Reports',
      //               textSize: 12,
      //               textColor: Colors.white,
      //               backgroundColor: buttonblue,
      //               iconSize: 24,
      //               padding: padding,
      //             ),
      //             GButton(
      //               gap: gap,
      //               icon: LineIcons.shoppingCart,
      //               iconColor: buttonblue,
      //               iconActiveColor: Colors.white,
      //               text: 'My Cart',
      //               textSize: 12,
      //               textColor: Colors.white,
      //               backgroundColor: buttonblue,
      //               iconSize: 24,
      //               padding: padding,
      //             ),
      //             GButton(
      //               gap: gap,
      //               icon: LineIcons.addressBookAlt,
      //               iconColor: buttonblue,
      //               iconActiveColor: Colors.white,
      //               text: 'More',
      //               textSize: 12,
      //               textColor: Colors.white,
      //               backgroundColor: buttonblue,
      //               iconSize: 24,
      //               padding: padding,
      //             ),
      //           ],
      //           selectedIndex: _index,
      //           onTabChange: (index) {
      //             setState(() {
      //               _index = index;
      //             });
      //             controller.jumpToPage(index);
      //           },
      //         ),
      //       ),
      //     ),
      //   ),
    ));
  }
}
