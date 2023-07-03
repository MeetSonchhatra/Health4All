import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/user-side/Search/book.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../../Search/Search.dart';
import '../../profile/profile.dart';
import '../Cart.dart';
import '../HomeM.dart';
import '../More.dart';
import '../Reports.dart';
import 'Notifications.dart';

class RapidTest extends StatefulWidget {
  const RapidTest({super.key});

  @override
  State<RapidTest> createState() => _RapidTestState();
}

class _RapidTestState extends State<RapidTest> {
  int num = 0;
  var padding = EdgeInsets.symmetric(horizontal: 4.5.w, vertical: 0.57.w);
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
                                borderSide:
                                    const BorderSide(color: Colors.white),
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
            Text(
              'Rapid basic Test',
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 1.h,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              RecommendedTest(
                                image: "assets/coronavirus.png",
                                title: "Covid 19",
                                press: () {},
                              ),
                              RecommendedTest(
                                image: "assets/blood-drop.png",
                                title: "Blood Test",
                                press: () {},
                              ),
                              RecommendedTest(
                                image: "assets/blood-drop.png",
                                title: "Blood Test",
                                press: () {},
                              ),
                            ],
                          ).marginOnly(left: 5.w),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                //  border: Border.all(color: Colors.black, width: 2),
                color: whiteColor,

                // borderRadius: const BorderRadius.all(Radius.circular(100)),
                boxShadow: [
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
                    icon: Icons.more_horiz,
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
      ),
    );
  }
}

class RecommendedTest extends StatelessWidget {
  const RecommendedTest({
    this.image,
    this.title,
    this.press,
  });
  final String? image, title;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        child: Row(
          children: [
            Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(246, 246, 246, 1),
                      borderRadius: BorderRadius.circular(10)),
                  height: 8.h,
                  width: 18.w,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 2.35.w, vertical: 1.13.h),
                    child: Image.asset(
                      image!,
                      height: 5.7,
                      width: 12.5.w,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                GestureDetector(
                  onTap: press,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    child: Row(
                      children: <Widget>[
                        Text("$title",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 11.4.sp,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 5.w,
            )
          ],
        ),
      ),
    );
  }
}
