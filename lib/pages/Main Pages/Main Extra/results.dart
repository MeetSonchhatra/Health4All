import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Main%20Pages/Cart.dart';
import 'package:health4all/pages/Main%20Pages/Home.dart';
import 'package:health4all/pages/Main%20Pages/HomeM.dart';
import 'package:health4all/pages/Main%20Pages/More.dart';
import 'package:health4all/pages/Main%20Pages/Reports.dart';
import 'package:health4all/pages/Search/Searchlb.dart';
import 'package:health4all/pages/Search/Searchtst.dart';
import 'package:health4all/pages/profile/profile.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../Search/Search.dart';
import 'Notifications.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

final TextEditingController _searchText = TextEditingController();

class _ResultsState extends State<Results> {
  int myIndex = 0;
  @override
  bool is_checked = false;

  @override
  bool is_check = false;

  int num = 0;
  var padding = const EdgeInsets.symmetric(horizontal: 18, vertical: 5);
  double gap = 10;
  int _index = 1;
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
      body: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),
          Row(
            children: [
              Text(
                'Report No: ',
                style: TextStyle(
                  fontSize: 12.4.sp,
                  color: Color.fromRGBO(14, 13, 18, 1),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'CD1201583',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.4.sp,
                    color: Color.fromRGBO(30, 59, 141, 1)),
              ),
              SizedBox(
                width: 14.w,
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.download)),
              SizedBox(
                width: 2.w,
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            ],
          ).marginOnly(left: 40),
          Card(
            elevation: 20,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: SizedBox(
              width: 350,
              height: 474,
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          height: 60,
                          width: 60,
                          child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Image.asset('assets/coronavirus.png'))),
                      SizedBox(
                        width: 1.w,
                      ),
                      Text(
                        "Your Covid test results ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        '11:11am',
                        style: TextStyle(
                            color: Color.fromRGBO(197, 197, 197, 1),
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 3.86.h,
          ),
          Expanded(
              child: SizedBox(
            height: 28.35.h,
            child: PageView.builder(
                itemCount: 4,
                controller: controller,
                onPageChanged: (page) {
                  setState(() {
                    _index = page;
                  });
                },
                itemBuilder: (context, positions) {
                  return Container(
                    child: _pageData[positions],
                  );
                }),
          ))
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: whiteColor, boxShadow: [
            BoxShadow(
              spreadRadius: -10,
              blurRadius: 60,
              color: Colors.black.withOpacity(0.4),
              offset: const Offset(0, 25),
            )
          ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              curve: Curves.fastOutSlowIn,
              duration: const Duration(milliseconds: 900),
              tabs: [
                GButton(
                  gap: gap,
                  icon: LineIcons.home,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'Home',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttonblue,
                  iconSize: 24,
                  padding: padding,
                  onPressed: () {
                    Get.to(const HomePg());
                  },
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.book,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'Reports',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttonblue,
                  iconSize: 24,
                  padding: padding,
                  onPressed: () {
                    Get.to(const Report());
                  },
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.shoppingCart,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'My Cart',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttonblue,
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.addressBookAlt,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'More',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttonblue,
                  iconSize: 24,
                  padding: padding,
                ),
              ],
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
                controller.jumpToPage(index);
              },
            ),
          ),
        ),
      ),
    ));
  }
}
