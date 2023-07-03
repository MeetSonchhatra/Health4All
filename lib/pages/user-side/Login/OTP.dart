// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/api.dart';
import 'package:health4all/model/LoginModel.dart';
import 'package:health4all/pages/user-side/Main%20Pages/Home.dart';
import 'package:health4all/pages/user-side/Login/LoginM.dart';
import 'package:health4all/pages/user-side/Login/Signup.dart';
import 'package:health4all/pages/user-side/Main%20Pages/HomeM.dart';
import 'package:sizer/sizer.dart';
import '../../../consts/colors.dart';
import 'package:quickalert/quickalert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OTP extends StatefulWidget {
  const OTP({super.key, required this.phone});
  final String phone;
  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController otp1 = TextEditingController();
  TextEditingController otp2 = TextEditingController();
  TextEditingController otp3 = TextEditingController();
  TextEditingController otp4 = TextEditingController();
  TextEditingController otp5 = TextEditingController();
  TextEditingController otp6 = TextEditingController();
  void showAlert() {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: "We have successfully verified your number.",
        confirmBtnText: "Welcome",
        confirmBtnColor: Colors.green,
        onConfirmBtnTap: () {
          Get.to(const HomePg());
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
              Get.to(const LoginM());
            },
          )),
      body: Container(
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
                  'ConFirm OTP',
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
                  _textfieldOTP(ft: true, last: false, controller: otp1),
                  _textfieldOTP(ft: false, last: false, controller: otp2),
                  _textfieldOTP(ft: false, last: false, controller: otp3),
                  _textfieldOTP(ft: false, last: false, controller: otp4),
                  _textfieldOTP(ft: false, last: false, controller: otp5),
                  _textfieldOTP(ft: false, last: true, controller: otp6),
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
                  backgroundColor: buttonblue,
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                ),
                onPressed: () async {
                  String fOtp = otp1.text +
                      otp2.text +
                      otp3.text +
                      otp4.text +
                      otp5.text +
                      otp6.text;
                  if (fOtp == "123456") {
                    LoginModel data = await LoginApi().loginList(widget.phone);
                    SharedPreferences preference = await SharedPreferences.getInstance(); 
                      preference.setString("token",data.data!.token.toString());
                    if (data.code == 200) {                      
                      showAlert();
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(data.message.toString())));
                    }
                  } else { 
                    Text('OTP INVALID');
                  }
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
                    Get.to(const Signup());
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
    ));
  }

  _textfieldOTP(
      {required bool ft, last, required TextEditingController controller}) {
    return SizedBox(
      height: 60,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          controller: controller,
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
