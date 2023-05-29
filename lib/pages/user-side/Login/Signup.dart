import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/user-side/Login/LoginM.dart';
import 'package:health4all/pages/user-side/Login/LoginPg.dart';
import 'package:health4all/pages/user-side/Login/OTP.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formKey = GlobalKey<FormState>();
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
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            Get.to(const LoginPage());
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
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                          color: const Color.fromRGBO(51, 51, 51, 1),
                          fontSize: 15.6.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ).marginOnly(left: 10.w),
                // SizedBox(
                //   height: 2.h,
                // ),
                Row(
                  children: [
                    Text(
                      "to create your HealthBuddy Account",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(1, 82, 168, 1),
                        fontSize: 13.sp,
                      ),
                    )
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 4.03.h,
                ),

                Row(
                  children: [
                    Text(
                      "Set Up Your profile   ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: const Color.fromRGBO(4, 6, 60, 1),
                          fontSize: 11.4.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    const Icon(
                      Icons.create,
                      color: buttonblue,
                    )
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Full Name",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.2.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10.w, top: 0.5.h),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: buttonblue))),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Enter correct  username ";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Enter your Email id",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10.w, top: 0.5.h),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: buttonblue))),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                            .hasMatch(value)) {
                      return 'Enter correct email address';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),

                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Enter your Mobile number",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ).marginOnly(left: 10.w),
                SizedBox(
                  height: 1.h,
                ),
                TextFormField(
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10.w, top: 0.25.h),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: const BorderSide(color: buttonblue))),
                  validator: (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)')
                            .hasMatch(value)) {
                      return 'Enter valid phone number ';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),

                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.cake,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Enter your Date of Birth",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ).marginOnly(left: 10.w),
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
                ).marginOnly(left: 12.w),

                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.wc,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Select Your Gender ",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                  ],
                ).marginOnly(left: 10.w),
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
                          borderSide: const BorderSide(color: buttonblue))),
                ).paddingSymmetric(horizontal: 9.w, vertical: 0.25.h),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.location_city,
                      color: Colors.black,
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "Select Your City ",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ).marginOnly(left: 10.w),
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
                          borderSide: const BorderSide(color: buttonblue))),
                ).paddingSymmetric(horizontal: 9.w, vertical: 0.15.h),

                SizedBox(
                  height: 2.h,
                ),

                Row(
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                    SizedBox(
                      width: 1.w,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(const LoginM());
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Color.fromRGBO(1, 82, 168, 1)),
                      ),
                    )
                  ],
                ).marginOnly(left: 12.w),
                SizedBox(
                  height: 2.h,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(81.w, 5.25.h),
                      backgroundColor: buttonblue,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Get.to(LoginM());
                      }
                    },
                    child: const Text('Register')),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
