import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/pages/Main%20Pages/Cart.dart';
import 'package:health4all/pages/Main%20Pages/HomeM.dart';
import 'package:health4all/pages/Main%20Pages/More.dart';
import 'package:health4all/pages/Main%20Pages/Reports.dart';
import 'package:health4all/pages/Search/Search.dart';
import 'package:health4all/pages/profile/profile.dart';
import 'package:health4all/pages/track/tracker2.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';
import '../../../consts/colors.dart';
import '../Main Pages/Home.dart';
import '../Main Pages/Main Extra/Notifications.dart';

class Track1 extends StatefulWidget {
  const Track1({super.key});

  @override
  State<Track1> createState() => _Track1State();
}

class _Track1State extends State<Track1> {
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
        toolbarHeight: 170,
        flexibleSpace: Stack(
          children: [
            Column(
              children: [
                Stack(children: [
                  SizedBox(
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
                  IconButton(
                    icon: const Icon(Icons.notifications_none_outlined),
                    onPressed: () {
                      Get.to(const Notifications());
                    },
                    color: Colors.black,
                  ).marginOnly(left: 270, top: 20),
                ]).marginOnly(left: 0, top: 20),
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
              height: 1.h,
            ),
            Stack(
              children: [
                Container(
                  height: 436,
                  width: 509,
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
                      height: 254,
                      width: 430,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 4.h,
                          ),
                          Row(
                            children: [
                              const Text(
                                'Your Test is on the Way',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ).marginOnly(left: 20),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          SizedBox(
                            height: 130,
                            width: 350,
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
                                            children: const [
                                              Text(
                                                'ETA: 9:00 AM',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 194, 44, 1)),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 1.5.h,
                                          ),
                                          Row(
                                            children: const [
                                              SizedBox(
                                                height: 30,
                                                width: 220,
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
                                                      fontSize: 10),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 3.h,
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                'PIN:',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                ' 0 0 2 5',
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        1, 82, 168, 1),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
                                Expanded(
                                    child: SizedBox(
                                  height: 160,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 68,
                                        width: 68,
                                        child: Image.asset(
                                          "assets/Person2.png",
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      const Center(
                                          child: Text(
                                        'Satya .H',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
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
                                          const Icon(Icons.phone),
                                          SizedBox(
                                            width: 1.w,
                                          ),
                                          Card(
                                            elevation: 5,
                                            child: Container(
                                              height: 20,
                                              width: 32,
                                              decoration: BoxDecoration(
                                                  color: whiteColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: const Text(
                                                '4.2',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    color: Color.fromRGBO(
                                                        16, 122, 21, 1)),
                                              ).paddingOnly(left: 7, top: 3),
                                            ),
                                          )
                                        ],
                                      ).marginOnly(left: 15),
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
                              SizedBox(
                                width: 15.w,
                              ),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      minimumSize: const Size(145, 44),
                                      backgroundColor: whiteColor,
                                      elevation: 8),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Colors.red, fontSize: 16),
                                  )),
                              SizedBox(
                                width: 5.w,
                              ),
                              TextButton(
                                onPressed: () {
                                  Get.to(const Track2());
                                },
                                child: const Text(
                                  'Next',
                                  style: TextStyle(
                                      color: fontblue,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ).marginOnly(left: 40),
                        ],
                      ),
                    ),
                  ),
                ).marginOnly(top: 250),
              ],
            ),
            const SizedBox(
              height: 100,
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
