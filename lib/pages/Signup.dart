import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/LoginM.dart';
import 'package:health4all/pages/LoginPg.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  String name = "";
  DateTime? _selectedDate;
  final _gender = ["Male", "Female", "Other"];
  String? _selectedVal = "Male";

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
    print(pickeddate);
    setState(() {
      _selectedDate = pickeddate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Get.to(LoginPage());
          },
        ),
        title: Container(
          child: Row(
            children: [
              // Icon(
              //   Icons.arrow_back,
              //   color: Colors.black,
              // ),
              SizedBox(
                width: 50.w,
              ),
              // CountryListPick(
              //   theme: CountryTheme(
              //     isShowFlag: true,
              //     isShowTitle: false,
              //     isShowCode: false,
              //     isDownIcon: true,
              //     showEnglishName: false,
              //     labelColor: Colors.blueAccent,
              //   ),
              //   initialSelection: '+91',

              // )
            ],
          ),
        ),
      ),
      body: Container(
        color: whiteColor,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontSize: 20.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              // SizedBox(
              //   height: 2.h,
              // ),
              Row(
                children: [
                  Text(
                    "To create your HealthBuddy Account",
                    style: TextStyle(
                      color: Color.fromRGBO(1, 82, 168, 1),
                      fontSize: 13.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 4.h,
              ),

              Row(
                children: [
                  Text(
                    "Set Up Your profile   ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(4, 6, 60, 1),
                      fontSize: 13.sp,
                    ),
                  ),
                  Icon(
                    Icons.create,
                    color: buttonblue,
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Full Name",
                    style: TextStyle(
                      color: fontblack,
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Full Name",
                    hintStyle: TextStyle(color: buttonblue),
                    // labelText: "Username",
                    // floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: buttonblue))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username cannot be null';
                  }
                  return null;
                },
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ).paddingSymmetric(horizontal: 35, vertical: 2),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Enter your Email id",
                    style: TextStyle(
                      color: fontblack,
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Email id",
                    hintStyle: TextStyle(color: buttonblue),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: buttonblue))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Email cannot be null';
                  }
                  return null;
                },
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ).paddingSymmetric(horizontal: 35, vertical: 2),

              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Enter your Mobile number",
                    style: TextStyle(
                      color: fontblack,
                      fontSize: 14.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 1.h,
              ),
              TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                    hintText: "Phone number",
                    hintStyle: TextStyle(color: buttonblue),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: buttonblue))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Phone number cannot be null';
                  }
                  return null;
                },
                onChanged: (value) {
                  name = value;
                  setState(() {});
                },
              ).paddingSymmetric(horizontal: 35, vertical: 2),

              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.cake,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Enter your Date of Birth",
                    style: TextStyle(
                      color: fontblack,
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
                  Icon(
                    Icons.wc,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Select Your Gender ",
                    style: TextStyle(
                      color: fontblack,
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
                items: _gender
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
                  Icons.arrow_drop_down_circle,
                  color: buttonblue,
                ),
                dropdownColor: lightblue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: buttonblue))),
              ).paddingSymmetric(horizontal: 35, vertical: 2),
              SizedBox(
                height: 2.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.wc,
                    color: Colors.black,
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Select Your City ",
                    style: TextStyle(
                      color: fontblack,
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
                  Icons.arrow_drop_down_circle,
                  color: buttonblue,
                ),
                dropdownColor: lightblue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: buttonblue))),
              ).paddingSymmetric(horizontal: 35, vertical: 2),

              SizedBox(
                height: 2.h,
              ),

              Row(
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      color: fontblack,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(
                    width: 5.h,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(LoginM());
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Color.fromRGBO(1, 82, 168, 1)),
                    ),
                  )
                ],
              ).marginOnly(left: 40),
              SizedBox(
                height: 2.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(300, 44),
                    backgroundColor: buttonblue,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Register')),
            ],
          ),
        ),
      ),
    ));
  }
}
