import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Main%20Pages/Cart.dart';
import 'package:health4all/pages/Main%20Pages/Home.dart';
import 'package:health4all/pages/Main%20Pages/HomeM.dart';
import 'package:health4all/pages/Main%20Pages/More.dart';
import 'package:health4all/pages/Main%20Pages/Reports.dart';
import 'package:health4all/pages/Search/Labmain.dart';
import 'package:health4all/pages/Search/Searchlb.dart';
import 'package:health4all/pages/Search/Searchtst.dart';
import 'package:health4all/pages/profile/profile.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

class Lab extends StatefulWidget {
  const Lab({super.key});

  @override
  State<Lab> createState() => _LabState();
}

final TextEditingController _searchText = TextEditingController();

class _LabState extends State<Lab> {
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
        toolbarHeight: 170,
        flexibleSpace: Stack(
          children: [
            Column(
              children: [
                Container(
                  child: Stack(children: [
                    Container(
                      width: 160,
                      child: DropdownButtonFormField(
                        style: const TextStyle(
                            fontSize: 12, color: Color.fromRGBO(3, 9, 19, 1)),
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
                        decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(250, 250, 250, 1))),
                          labelText: "Location",
                          labelStyle: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(197, 197, 197, 1)),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.black,
                    ).marginOnly(left: 270, top: 20),
                  ]),
                ).marginOnly(left: 0, top: 20),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                    child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
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
                      width: 280,
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      child: TextField(
                        readOnly: true,
                        onTap: () {
                          Get.to(const Lab());
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
                            hintStyle: const TextStyle(
                                color: Color.fromRGBO(197, 197, 197, 1),
                                fontSize: 12),
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
                ).marginOnly(left: 20))
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
                const Text(
                  'Laboratory:',
                  style: TextStyle(
                      color: Color.fromRGBO(3, 9, 19, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ],
            ).marginOnly(left: 50),
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
                    height: 105,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/bgimg.png"),
                            fit: BoxFit.fill)),
                  ).marginOnly(left: 9.w, right: 9.w),
                  Container(
                    height: 81,
                    width: 301,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: buttonblue),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Sharda Laboratory',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              height: 20,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                '4.2',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(16, 122, 21, 1)),
                              ).paddingOnly(left: 7, top: 3),
                            )
                          ],
                        ).marginOnly(left: 20, right: 20),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Gh-5, Gandhinagar, 5km away',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 0.61)),
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            const Icon(
                              Icons.verified_user_outlined,
                              color: Color.fromRGBO(16, 122, 21, 1),
                              size: 25,
                            ),
                          ],
                        ).marginOnly(left: 20, right: 20)
                      ],
                    ),
                  ).marginOnly(top: 23, left: 45)
                ],
              ),
            ),
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
                    height: 105,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/bgimg.png"),
                            fit: BoxFit.fill)),
                  ).marginOnly(left: 9.w, right: 9.w),
                  Container(
                    height: 81,
                    width: 301,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: buttonblue),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Sharda Laboratory',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              height: 20,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                '4.2',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(16, 122, 21, 1)),
                              ).paddingOnly(left: 7, top: 3),
                            )
                          ],
                        ).marginOnly(left: 20, right: 20),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Gh-5, Gandhinagar, 5km away',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 0.61)),
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            const Icon(
                              Icons.verified_user_outlined,
                              color: Color.fromRGBO(16, 122, 21, 1),
                              size: 25,
                            ),
                          ],
                        ).marginOnly(left: 20, right: 20)
                      ],
                    ),
                  ).marginOnly(top: 23, left: 45)
                ],
              ),
            ),
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
                    height: 105,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/bgimg.png"),
                            fit: BoxFit.fill)),
                  ).marginOnly(left: 9.w, right: 9.w),
                  Container(
                    height: 81,
                    width: 301,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: buttonblue),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Sharda Laboratory',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              height: 20,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                '4.2',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(16, 122, 21, 1)),
                              ).paddingOnly(left: 7, top: 3),
                            )
                          ],
                        ).marginOnly(left: 20, right: 20),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Gh-5, Gandhinagar, 5km away',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 0.61)),
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            const Icon(
                              Icons.verified_user_outlined,
                              color: Color.fromRGBO(16, 122, 21, 1),
                              size: 25,
                            ),
                          ],
                        ).marginOnly(left: 20, right: 20)
                      ],
                    ),
                  ).marginOnly(top: 23, left: 45)
                ],
              ),
            ),
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
                    height: 105,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/bgimg.png"),
                            fit: BoxFit.fill)),
                  ).marginOnly(left: 9.w, right: 9.w),
                  Container(
                    height: 81,
                    width: 301,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: buttonblue),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Sharda Laboratory',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              height: 20,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                '4.2',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(16, 122, 21, 1)),
                              ).paddingOnly(left: 7, top: 3),
                            )
                          ],
                        ).marginOnly(left: 20, right: 20),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Gh-5, Gandhinagar, 5km away',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 0.61)),
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            const Icon(
                              Icons.verified_user_outlined,
                              color: Color.fromRGBO(16, 122, 21, 1),
                              size: 25,
                            ),
                          ],
                        ).marginOnly(left: 20, right: 20)
                      ],
                    ),
                  ).marginOnly(top: 23, left: 45)
                ],
              ),
            ),
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
                    height: 105,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/bgimg.png"),
                            fit: BoxFit.fill)),
                  ).marginOnly(left: 9.w, right: 9.w),
                  Container(
                    height: 81,
                    width: 301,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: buttonblue),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Sharda Laboratory',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              height: 20,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                '4.2',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(16, 122, 21, 1)),
                              ).paddingOnly(left: 7, top: 3),
                            )
                          ],
                        ).marginOnly(left: 20, right: 20),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Gh-5, Gandhinagar, 5km away',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 0.61)),
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            const Icon(
                              Icons.verified_user_outlined,
                              color: Color.fromRGBO(16, 122, 21, 1),
                              size: 25,
                            ),
                          ],
                        ).marginOnly(left: 20, right: 20)
                      ],
                    ),
                  ).marginOnly(top: 23, left: 45)
                ],
              ),
            ),
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
                    height: 105,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage("assets/bgimg.png"),
                            fit: BoxFit.fill)),
                  ).marginOnly(left: 9.w, right: 9.w),
                  Container(
                    height: 81,
                    width: 301,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        color: buttonblue),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 2.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Sharda Laboratory',
                              style: TextStyle(
                                  color: whiteColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            ),
                            SizedBox(
                              width: 15.w,
                            ),
                            Container(
                              height: 20,
                              width: 32,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                '4.2',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Color.fromRGBO(16, 122, 21, 1)),
                              ).paddingOnly(left: 7, top: 3),
                            )
                          ],
                        ).marginOnly(left: 20, right: 20),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Gh-5, Gandhinagar, 5km away',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromRGBO(255, 255, 255, 0.61)),
                            ),
                            SizedBox(
                              width: 18.w,
                            ),
                            const Icon(
                              Icons.verified_user_outlined,
                              color: Color.fromRGBO(16, 122, 21, 1),
                              size: 25,
                            ),
                          ],
                        ).marginOnly(left: 20, right: 20)
                      ],
                    ),
                  ).marginOnly(top: 23, left: 45)
                ],
              ),
            ),
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
