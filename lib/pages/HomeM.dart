import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/LoginM.dart';
import 'package:sizer/sizer.dart';

import '../consts/dimn.dart';

class HomeM extends StatefulWidget {
  const HomeM({super.key});

  @override
  State<HomeM> createState() => _HomeMState();
}

class _HomeMState extends State<HomeM> {
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
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Container(
                height: 15.h,
                margin: EdgeInsets.only(left: 15, right: 15),
                child: PageView.builder(
                    controller: pageController,
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return _buildpgitm(position);
                    }),
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                children: [
                  Text(
                    'Your Recent Tests',
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
                    onPressed: () {},
                    child: Text(
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
                      image: "assets/blood-drop.png",
                      title: "Blood Test",
                      press: () {},
                    ),
                    DoneTest(
                      image: "assets/blood-drop.png",
                      title: "Blood Test",
                      press: () {},
                    ),
                    DoneTest(
                      image: "assets/blood-drop.png",
                      title: "Blood Test",
                      press: () {},
                    ),
                    DoneTest(
                      image: "assets/blood-drop.png",
                      title: "Blood Test",
                      press: () {},
                    ),
                    DoneTest(
                      image: "assets/blood-drop.png",
                      title: "Blood Test",
                      press: () {},
                    ),
                    DoneTest(
                      image: "assets/blood-drop.png",
                      title: "Blood Test",
                      press: () {},
                    ),
                  ],
                ).marginOnly(left: 20),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  Text(
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
                    onPressed: () {},
                    child: Text(
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
              Container(
                height: 132,
                width: 350,
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: lightblue,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 7.0,
                          color: Color(0xFFe8e8e8),
                          offset: Offset(0, 5)),
                      BoxShadow(
                          color: Color.fromRGBO(97, 174, 255, 1),
                          offset: Offset(-4, 1)),
                      BoxShadow(color: buttonblue, offset: Offset(7, 2)),
                    ],
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://cdn.grabon.in/gograbon/images/web-images/uploads/1618566499779/medicines-offers.jpg"))),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Text(
                    'Rapid Basic Test',
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
                    onPressed: () {},
                    child: Text(
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
                      image: "assets/blood-drop.png",
                      title: "Blood Test",
                      press: () {
                        Get.to(LoginM());
                      },
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
                  Text(
                    'Get to Know',
                    style: TextStyle(
                      color: fontblack,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ).marginOnly(left: 40),
                  Text(
                    ' BioSampler',
                    style: TextStyle(
                      color: Color.fromRGBO(30, 59, 141, 1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
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
                  Container(
                    height: 165,
                    width: 350,
                    child: Row(
                      children: [
                        Image.asset("assets/BioS.png"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(180, 28, 82, 75),
                    child: Container(
                      height: 77,
                      width: 100,
                      child: Text(
                        'Diagnostic At Your DoorStep',
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
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
                              minimumSize: Size(25, 25),
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
                              children: [
                                Text(
                                  'Know More',
                                  style: TextStyle(fontSize: 12),
                                ),
                                Icon(
                                  Icons.arrow_right_alt_sharp,
                                  size: 16,
                                )
                              ],
                            )).marginOnly(right: 40)),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Text(
                    'Laboratory Around You',
                    style: TextStyle(
                      color: fontblack,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ).marginOnly(left: 40),
                  SizedBox(
                    width: 30,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
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
              Container(
                height: 218,
                width: 350,
                child: Image.network(
                    "https://www.google.com/maps/d/thumbnail?mid=1s-GMZhDwiGcjtbp-dum_s2AyLRA&hl=en_US",
                    fit: BoxFit.cover),
              ).marginSymmetric(horizontal: 20),
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
            width: 350,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index.isEven ? buttonblue : lightblue,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://cdn.grabon.in/gograbon/images/web-images/uploads/1618566499779/medicines-offers.jpg"))),
          ),
          Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(25, 25),
                        backgroundColor: buttonblue,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Order Now'))
                  .marginOnly(left: 40))
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
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
        child: Column(
          children: <Widget>[
            Container(
              color: textfieldGrey,
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
            GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(40)),
                child: Row(
                  children: <Widget>[
                    Text("$title",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400))
                        .marginOnly(left: 20)
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
            Container(
              color: textfieldGrey,
              height: 60,
              width: 60,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  image!,
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            GestureDetector(
              onTap: press,
              child: Container(
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Row(
                  children: <Widget>[
                    Text("$title",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400))
                        .marginOnly(left: 20)
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
