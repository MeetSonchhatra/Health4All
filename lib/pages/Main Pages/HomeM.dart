// ignore_for_file: file_names, unnecessary_new

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Main%20Pages/Cart.dart';
import 'package:health4all/pages/Main%20Pages/Main%20Extra/popular.dart';
import 'package:health4all/pages/Main%20Pages/Main%20Extra/rapid.dart';
import 'package:health4all/pages/Main%20Pages/Main%20Extra/recent.dart';
import 'package:health4all/pages/Main%20Pages/More.dart';
import 'package:health4all/pages/Main%20Pages/Reports.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';


class HomeM extends StatefulWidget {
  const HomeM({super.key});

  @override
  State<HomeM> createState() => _HomeMState();
}

class _HomeMState extends State<HomeM> {
  int num = 0;
  var padding = const EdgeInsets.symmetric(horizontal: 18, vertical: 5);
  double gap = 10;
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

  PageController pageController = PageController(viewportFraction: 0.8);
  var curpgvle = 0.0;
  double scaleFactor = 0.8;
  double hgt = 10.8;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        curpgvle = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: whiteColor,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 15.h,
                //  margin: EdgeInsets.only(left: 15, right: 15),
                child: PageView.builder(
                    controller: pageController,
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return _buildpgitm(position);
                    }),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Text(
                    'Your Recent Tests',
                    style: TextStyle(
                      color: Color.fromRGBO(14, 13, 18, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ).marginOnly(left: 40),
                  SizedBox(
                    width: 30.w,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const Recent());
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(
                          color: fontblue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DoneTest(
                      image: "assets/Rectangle 1.png",
                      title: "Test1",
                      press: () {
                        Get.to(const Recent());
                      },
                    ),
                    DoneTest(
                      image: "assets/Rectangle 2.png",
                      title: "Test2",
                      press: () {
                        Get.to(const Recent());
                      },
                    ),
                    DoneTest(
                      image: "assets/Rectangle 3.png",
                      title: "Test3",
                      press: () {
                        Get.to(const Recent());
                      },
                    ),
                    DoneTest(
                      image: "assets/Rectangle 4.png",
                      title: "Test4",
                      press: () {
                        Get.to(const Recent());
                      },
                    ),
                    DoneTest(
                      image: "assets/Rectangle 5.png",
                      title: "Test5",
                      press: () {
                        Get.to(const Recent());
                      },
                    ),
                  ],
                ).marginOnly(left: 20),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  const Text(
                    'Popular Packages',
                    style: TextStyle(
                      color: fontblack,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ).marginOnly(left: 40),
                  SizedBox(
                    width: 30.w,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const Popular());
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(
                          color: fontblue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Stack(
                children: [
                  Container(
                    height: 132,
                    width: 310,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(237, 246, 255, 1),
                    ),
                  ),
                  Container(
                    height: 132,
                    width: 330,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromRGBO(186, 220, 255, 1),
                    ),
                  ),
                  Container(
                    height: 132,
                    width: 350,
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: lightblue,
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/pop.png"))),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  const Text(
                    'Rapid Basic Test',
                    style: TextStyle(
                      color: fontblack,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ).marginOnly(left: 40),
                  SizedBox(
                    width: 33.w,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const RapidTest());
                    },
                    child: const Text(
                      'View all',
                      style: TextStyle(
                          color: fontblue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RecommendedTest(
                      image: "assets/coronavirus.png",
                      title: "Covid 19",
                      press: () {
                        Get.to(const RapidTest());
                      },
                    ),
                    RecommendedTest(
                      image: "assets/blood-drop.png",
                      title: "Blood Test",
                      press: () {
                        Get.to(const RapidTest());
                      },
                    ),
                    RecommendedTest(
                      image: "assets/coronavirus.png",
                      title: "Covid 19",
                      press: () {
                        Get.to(const RapidTest());
                      },
                    ),
                    RecommendedTest(
                      image: "assets/coronavirus.png",
                      title: "Covid 19",
                      press: () {
                        Get.to(const RapidTest());
                      },
                    ),
                    RecommendedTest(
                      image: "assets/blood-drop.png",
                      title: "Blood Test",
                      press: () {
                        Get.to(const RapidTest());
                      },
                    ),
                    RecommendedTest(
                      image: "assets/blood-drop.png",
                      title: "Blood Test",
                      press: () {},
                    ),
                  ],
                ).marginOnly(left: 20),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Text(
                    'Get to Know',
                    style: TextStyle(
                      color: Color.fromRGBO(14, 13, 18, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ).marginOnly(left: 40),
                  const Text(
                    ' BioSampler',
                    style: TextStyle(
                      color: Color.fromRGBO(30, 59, 141, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'TM',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontFeatures: [FontFeature.superscripts()],
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Stack(
                children: [
                  Card(
                    elevation: 6,
                    child: SizedBox(
                      height: 165,
                      width: 350,
                      child: Row(
                        children: [
                          Image.asset("assets/BioS.png"),
                        ],
                      ),
                    ),
                  ).marginOnly(left: 20),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(227, 33, 0, 75),
                    child: SizedBox(
                      height: 57,
                      width: 81,
                      child: Text(
                        'Diagnostic At Your DoorStep',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(1, 82, 168, 1)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(25, 25),
                            backgroundColor: buttonblue,
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Wrap(
                            children: const [
                              Text(
                                'Know More',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Icon(
                                LineIcons.arrowRight,
                                size: 16,
                              )
                            ],
                          )).marginOnly(right: 40),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  const Text(
                    'Laboratory Around You',
                    style: TextStyle(
                      color: fontblack,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ).marginOnly(left: 40),
                  SizedBox(
                    width: 22.w,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'View all',
                      style: TextStyle(
                          color: fontblue,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              SizedBox(
                height: 218,
                width: 350,
                child: Image.asset("assets/map.jpg", fit: BoxFit.cover),
              ).marginSymmetric(horizontal: 20),
              SizedBox(
                height: 3.h,
              ),
              SizedBox(
                height: 161,
                width: 384,
                child: Image.asset("assets/Offers.png", fit: BoxFit.cover),
              ).marginOnly(left: 20),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget _buildpgitm(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == curpgvle.floor()) {
      var currScale = 1 - (curpgvle - index) * (1 - scaleFactor);
      var currtrans = hgt * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else if (index == curpgvle.floor() + 1) {
      var currScale = scaleFactor + (curpgvle - index + 1) * (1 - scaleFactor);
      var currtrans = hgt * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else if (index == curpgvle.floor() - 1) {
      var currScale = 1 - (curpgvle - index) * (1 - scaleFactor);
      var currtrans = hgt * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currtrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, hgt * (1 - scaleFactor) / 2, 1);
    }
    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: 132,
            margin: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: index.isEven ? buttonblue : lightblue,
                image: const DecorationImage(
                    fit: BoxFit.cover, image: AssetImage("assets/prom.png"))),
          ),
          // Align(
          //     alignment: Alignment.bottomLeft,
          //     child: ElevatedButton(
          //             style: ElevatedButton.styleFrom(
          //               minimumSize: Size(25, 25),
          //               backgroundColor: buttonblue,
          //               elevation: 0,
          //               shape: const RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.all(
          //                   Radius.circular(50),
          //                 ),
          //               ),
          //             ),
          //             onPressed: () {},
          //             child: Text('Order Now'))
          //         .marginOnly(left: 40))
        ],
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
                  color: const Color.fromRGBO(246, 246, 246, 1),
                  height: 70,
                  width: 70,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      image!,
                      height: 50,
                      width: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                GestureDetector(
                  onTap: press,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    child: Row(
                      children: <Widget>[
                        Text("$title",
                            style: const TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 14,
                                fontWeight: FontWeight.w400))
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              width: 20,
            )
          ],
        ),
      ),
    );
  }
}

class DoneTest extends StatelessWidget {
  const DoneTest({
    this.image,
    this.title,
    this.press,
  });
  final String? image, title;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(
              //color: Color.fromRGBO(246, 246, 246, 1),
              height: 70,
              width: 70,
              child: Image.asset(
                image!,
                height: 50,
                width: 50,
              ),
            ),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: const EdgeInsets.all(1),
                decoration: const BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Row(
                  children: <Widget>[
                    Text("$title",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(63, 81, 81, 1)))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
