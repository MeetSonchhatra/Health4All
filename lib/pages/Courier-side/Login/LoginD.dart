import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Courier-side/Login/OTPD.dart';
import 'package:health4all/pages/Courier-side/Login/SignupD.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';

class LoginD extends StatefulWidget {
  const LoginD({super.key});

  @override
  State<LoginD> createState() => _LoginDState();
}

class _LoginDState extends State<LoginD> {
  final formKey = GlobalKey<FormState>();
  String name = "";
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
              // Get.to(const LoginPage());
            },
          )),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            color: whiteColor,
            child: Column(children: [
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        color: const Color.fromRGBO(51, 51, 51, 1),
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ).marginOnly(left: 10.w),
              Row(
                children: [
                  Text(
                    "to your HealthBuddy Account",
                    style: TextStyle(
                      color: const Color.fromRGBO(1, 82, 168, 1),
                      fontSize: 16.sp,
                    ),
                  )
                ],
              ).marginOnly(left: 10.w),
              SizedBox(
                height: 4.5.h,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(151, 117, 105, 1),
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(30)),
                child: const Icon(
                  LineIcons.phoneVolume,
                  color: whiteColor,
                  size: 50,
                ),
                onPressed: () {},
              ),
              SizedBox(
                height: 4.5.h,
              ),
              Row(
                children: [
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
                    contentPadding: EdgeInsets.fromLTRB(5.w, 0, 0, 0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color.fromRGBO(234, 233, 234, 1)))),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'(^[0-9]{10}$)').hasMatch(value)) {
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
                height: 1.h,
              ),
              Row(
                children: [
                  Text(
                    "We will send One Time Password on this number",
                    style: TextStyle(
                      color: fontblack,
                      fontSize: 9.sp,
                    ),
                  ),
                ],
              ).marginOnly(left: 10.w),
              SizedBox(
                height: 4.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(81.w, 5.25.h),
                    backgroundColor: buttoncream,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Get.to(OTPD());
                    }
                  },
                  child: const Text('Generate OTP')),
              SizedBox(
                height: 6.h,
              ),
              Row(
                children: [
                  const Text("Don't Have an Account? "),
                  TextButton(
                    onPressed: () {
                      Get.to(const SignupD());
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Color.fromRGBO(1, 82, 168, 1)),
                    ),
                  )
                ],
              ).marginOnly(left: 20.w)
            ]),
          ),
        ),
      ),
    ));
  }
}
