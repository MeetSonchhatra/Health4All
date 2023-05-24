import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/profile/profile.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String name = "";
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
   // print(pickeddate);
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
      body: Container(
        color: whiteColor,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                height: 1.h,
              ),
              Row(
                children: const [
                  Text(
                    'Edit your Profile',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(5, 27, 98, 1)),
                  )
                ],
              ).marginOnly(left: 40),
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
                  Text(
                    "Name",
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
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 40, top: 4),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 233, 234, 1)))),
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
                  const Icon(
                    Icons.email_outlined,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Email id",
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
              TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 40, top: 4),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(197, 197, 197, 1),
                        ))),
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
                  const Icon(
                    Icons.phone,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Mobile number",
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
              TextFormField(
                keyboardType: const TextInputType.numberWithOptions(),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 40, top: 4),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(197, 197, 197, 1)))),
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
                  const Icon(
                    Icons.home,
                    color: Color.fromRGBO(197, 197, 197, 1),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    "Address",
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
              TextFormField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 40, top: 4),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 233, 234, 1)))),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Address cannot be null';
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
                            width: 2.0,
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
      ),
    ));
  }
}
