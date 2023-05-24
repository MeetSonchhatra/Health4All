import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Login/LoginPg.dart';
import 'package:health4all/pages/Login/OTP.dart';
import 'package:health4all/pages/Login/Signup.dart';
import 'package:sizer/sizer.dart';

class LoginM extends StatefulWidget {
  const LoginM({super.key});

  @override
  State<LoginM> createState() => _LoginMState();
}

class _LoginMState extends State<LoginM> {
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
              Get.to(const LoginPage());
            },
          )),
      body: Container(
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
                  fontSize: 20.sp,
                ),
              )
            ],
          ).marginOnly(left: 40),
          Row(
            children: [
              Text(
                "to your HealthBuddy Account",
                style: TextStyle(
                  color: const Color.fromRGBO(1, 82, 168, 1),
                  fontSize: 13.sp,
                ),
              )
            ],
          ).marginOnly(left: 40),
          SizedBox(
            height: 8.h,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: buttonblue,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(30)),
            child: const Icon(
              Icons.phone,
              size: 50,
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              Text(
                "Enter your Mobile number",
                style: TextStyle(
                  color: fontblack,
                  fontSize: 12.sp,
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
                contentPadding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                hintText: "Phone number",
                hintStyle: const TextStyle(color: buttonblue),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: const BorderSide(color: buttonblue))),
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
              )
            ],
          ).marginOnly(left: 40),
          SizedBox(
            height: 3.h,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 44),
                backgroundColor: buttonblue,
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
              onPressed: () {
                Get.to(const OTP());
              },
              child: const Text('Generate OTP')),
          SizedBox(
            height: 4.h,
          ),
          Row(
            children: [
              const Text("Don't Have an Account? "),
              TextButton(
                onPressed: () {
                  Get.to(const Signup());
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Color.fromRGBO(1, 82, 168, 1)),
                ),
              )
            ],
          ).marginOnly(left: 80)
        ]),
      ),
    ));
  }
}
