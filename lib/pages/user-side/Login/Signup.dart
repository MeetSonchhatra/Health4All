import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/user-side/Login/LoginM.dart';
import 'package:health4all/pages/user-side/Login/LoginPg.dart';
import 'package:health4all/pages/user-side/Login/OTP.dart';
import 'package:health4all/pages/user-side/Login/OTP2.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController nam = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController gendr = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController dob = TextEditingController();

  final formKey = GlobalKey<FormState>();
  String name = "";
  DateTime? _selectedDate;
  final _gender = ["Male", "Female", "Other"];
  String? _selectedVal;

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
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_rounded),
          color: const Color.fromRGBO(1, 82, 168, 1),
          onPressed: () {
            Get.to(const LoginPage());
          },
        ),
        title: Row(
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
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign Up",
                  style: TextStyle(
                    color: const Color.fromRGBO(51, 51, 51, 1),
                    fontSize: 15.6.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "to create your HealthBuddy Account",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(1, 82, 168, 1),
                    fontSize: 13.sp,
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    Text(
                      "Set Up Your profile\t",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: const Color.fromRGBO(4, 6, 60, 1),
                          fontSize: 11.4.sp,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(width: 2.w),
                    const Icon(
                      Icons.create,
                      color: buttonblue,
                    )
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      "Full Name",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                TextFormField(
                  controller: nam,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: buttonblue),
                    ),
                  ),
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
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    const Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      "Enter your Email id",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 1.h),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: buttonblue),
                    ),
                  ),
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
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      "Enter your Mobile number",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 1.h),
                TextFormField(
                  controller: mobile,
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: buttonblue),
                    ),
                  ),
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
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    const Icon(
                      Icons.cake,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      "Enter your Date of Birth",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 1.h),
                ListTile(
                  title: Text(
                    _selectedDate == null
                        ? 'Select a date'
                        : formatter.format(_selectedDate!),
                  ),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.calendar_month,
                      size: 30,
                    ),
                    onPressed: _presentdatepicker,
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    const Icon(
                      Icons.wc,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      "Select Your Gender",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 1.h),
                DropdownButtonFormField(
                  value: _selectedVal,
                  items: _gender
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(
                      () {
                        _selectedVal = val as String;
                      },
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_drop_down_circle,
                    color: buttonblue,
                  ),
                  dropdownColor: lightblue,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(color: buttonblue),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  children: [
                    const Icon(
                      Icons.location_city,
                      color: Colors.black,
                    ),
                    SizedBox(width: 2.w),
                    Text(
                      "Select Your City",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 1.h),
                DropdownButtonFormField(
                  value: _selectedCity,
                  items: _city
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
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
                      borderSide: const BorderSide(color: buttonblue),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        color: fontblack,
                        fontSize: 12.4.sp,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Get.to(() => const LoginM());
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: Color.fromRGBO(1, 82, 168, 1)),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 2.h),
                Center(
                  child: ElevatedButton(
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
                        Get.to(
                          OTP2(
                            phone: mobile.text,
                            nam: nam.text,
                            email: email.text,
                            gendr: _selectedVal.toString(),
                            dob: _selectedDate.toString(),
                            city: _selectedCity.toString(),
                          ),
                        );
                      }
                    },
                    child: const Text('Register'),
                  ),
                ),
                SizedBox(height: 2.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
