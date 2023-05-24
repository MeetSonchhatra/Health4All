import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Main%20Pages/Home.dart';
import 'package:health4all/pages/Main%20Pages/More.dart';
import 'package:health4all/pages/profile/editprofile.dart';
import 'package:health4all/pages/profile/profile.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

import '../Main Pages/Cart.dart';
import '../Main Pages/Reports.dart';

class GenInfo extends StatefulWidget {
  const GenInfo({super.key});

  @override
  State<GenInfo> createState() => _GenInfoState();
}

class _GenInfoState extends State<GenInfo> {
  int myIndex = 0;
  DateTime? _selectedDate;
  final _pin = ["380001", "380002", "380003", "380004", "380005", "380006"];
  String? _selectedVal = "380001";

  final _city = [
    "Ahemdabad",
    "Vadodara",
    "Surat",
    "Nadiad",
    "Anand",
    "Rajkot",
    "Jamnagar"
  ];
  String? _selectedCity = "Ahemdabad";

  void _presentdatepicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 100, now.month, now.day);

    final pickeddate = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
    //print(pickeddate);
    setState(() {
      _selectedDate = pickeddate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: whiteColor,
            leading: IconButton(
              icon: const Icon(Icons.arrow_circle_left),
              color: Colors.black,
              iconSize: 30,
              onPressed: () {
                Get.to(const Profile());
              },
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: whiteColor),
                          boxShadow: const [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                color: Colors.white)
                          ],
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/person.png"),
                          )),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            // border: Border.all(
                            //     width: 4, color: ),
                            color: buttonblue),
                        child: const Icon(
                          LineIcons.camera,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Text(
                    'General Information',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(5, 27, 98, 1)),
                  ).marginOnly(left: 20),
                  SizedBox(
                    width: 29.w,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(25, 25),
                        side: const BorderSide(width: 1, color: Colors.white),
                        backgroundColor: buttonblue,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(38),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Get.to(const EditProfile());
                      },
                      child: Wrap(
                        children: [
                          const Icon(
                            Icons.edit,
                            size: 16,
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          const Text(
                            'Edit',
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  const Text(
                    "Name",
                    style: TextStyle(
                      color: Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 16,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  height: 50,
                  width: 350,
                  child: Row(
                    children: [
                      const Text(
                        'Cody Fisher',
                        style: TextStyle(
                            color: Color.fromRGBO(63, 81, 81, 1), fontSize: 16),
                      ).marginOnly(left: 40)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  const Text(
                    "Email",
                    style: TextStyle(
                      color: Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 16,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  height: 50,
                  width: 350,
                  child: Row(
                    children: [
                      const Text(
                        'cody.fisher@gmail.com',
                        style: TextStyle(
                            color: Color.fromRGBO(63, 81, 81, 1), fontSize: 16),
                      ).marginOnly(left: 40)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.person,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  const Text(
                    "Mobile Number",
                    style: TextStyle(
                      color: Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 16,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  height: 50,
                  width: 350,
                  child: Row(
                    children: [
                      const Text(
                        '9512658789',
                        style: TextStyle(
                            color: Color.fromRGBO(63, 81, 81, 1), fontSize: 16),
                      ).marginOnly(left: 40)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.home,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  const Text(
                    "Address",
                    style: TextStyle(
                      color: Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 16,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 1.h,
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  height: 92,
                  width: 350,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 80,
                        width: 250,
                        child: const Text(
                          "B-20, Indrapasth gulmor, near ITC narmada,132 ft ring road, Vastrapur, Ahmedabad.",
                          // overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          style: TextStyle(
                              color: Color.fromRGBO(63, 81, 81, 1),
                              fontSize: 16),
                        ).marginOnly(left: 20),
                      ).paddingOnly(left: 20, top: 2.h)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.cake,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Enter your Date of Birth",
                    style: TextStyle(
                      color: const Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 1.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    _selectedDate == null
                        ? 'Select a date  ->'
                        : formatter.format(_selectedDate!),
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.calendar_month,
                      color: Color.fromRGBO(63, 81, 81, 1),
                      size: 30,
                    ),
                    onPressed: _presentdatepicker,
                  ),
                ],
              ).marginOnly(left: 50),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_city,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "City ",
                    style: TextStyle(
                      color: const Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 1.h,
              ),
              DropdownButtonFormField(
                value: _selectedCity,
                items: _city
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedCity = val as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromRGBO(197, 197, 197, 1),
                ),
                dropdownColor: lightblue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(197, 197, 197, 1)))),
              ).paddingSymmetric(horizontal: 35, vertical: 2),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.my_location,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Pincode",
                    style: TextStyle(
                      color: const Color.fromRGBO(197, 197, 197, 1),
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 1.h,
              ),
              DropdownButtonFormField(
                value: _selectedVal,
                items: _pin
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (val) {
                  setState(() {
                    _selectedVal = val as String;
                  });
                },
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Color.fromRGBO(197, 197, 197, 1),
                ),
                dropdownColor: lightblue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(197, 197, 197, 1)))),
              ).paddingSymmetric(horizontal: 35, vertical: 2),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(145, 44),
                        backgroundColor: whiteColor,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                          side: BorderSide(
                            width: 1.0,
                            color: buttonblue,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: buttonblue, fontSize: 16),
                      )),
                  SizedBox(
                    width: 8.w,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(145, 44),
                        backgroundColor: buttonblue,
                        elevation: 0,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Save Changes',
                        style: TextStyle(fontSize: 16),
                      )),
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 3.h,
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
      ),
    );
  }
}
