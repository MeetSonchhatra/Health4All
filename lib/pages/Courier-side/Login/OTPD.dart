import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/Courier-side/Main-Pages/Home1.dart';
import 'package:quickalert/quickalert.dart';
import 'package:sizer/sizer.dart';

import 'SignupD.dart';

class OTPD extends StatefulWidget {
  const OTPD({super.key});

  @override
  State<OTPD> createState() => _OTPDState();
}

class _OTPDState extends State<OTPD> {
  void showAlert() {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: "We have successfully verified your number.",
        confirmBtnText: "Welcome",
        confirmBtnColor: Colors.green,
        onConfirmBtnTap: () {
          Get.to(const Home1());
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
            color: buttoncream,
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop();
            },
          )),
      body: SingleChildScrollView(
        child: Container(
          color: whiteColor,
          child: Column(
            children: [
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Confirm OTP',
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: buttonblue,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'enter OTP we just sent to your phone number',
                    style: TextStyle(
                      fontSize: 12.4.sp,
                      color: const Color.fromRGBO(1, 82, 168, 1),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Form(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _textfieldOTP(ft: true, last: false),
                    _textfieldOTP(ft: false, last: false),
                    _textfieldOTP(ft: false, last: false),
                    _textfieldOTP(ft: false, last: false),
                    _textfieldOTP(ft: false, last: false),
                    _textfieldOTP(ft: false, last: true),
                  ],
                ).marginOnly(left: 12.5.w, right: 12.5.w),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Time Remaining 2:00 minute ',
                      style: TextStyle(fontSize: 9.sp)),
                  SizedBox(
                    width: 5.w,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Resend',
                        style: TextStyle(fontSize: 9.sp),
                      ))
                ],
              ),
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
                    showAlert();
                  },
                  child: const Text('Verify')),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an Account? ",
                    style: TextStyle(
                        fontSize: 12.4.sp, color: Color.fromRGBO(4, 6, 60, 1)),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(const SignupD());
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Color.fromRGBO(1, 82, 168, 1),
                          fontSize: 12.4.sp),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  _textfieldOTP({required bool ft, last}) {
    return SizedBox(
      height: 60,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.isEmpty && ft == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          keyboardType: const TextInputType.numberWithOptions(),
          maxLength: 1,
          decoration: InputDecoration(
            counter: const Offstage(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 2, color: Colors.black12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: const BorderSide(width: 2, color: buttonblue),
            ),
          ),
        ),
      ),
    );
  }
}
