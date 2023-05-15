import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:health4all/pages/Home.dart';
import 'package:health4all/pages/LoginM.dart';
import 'package:health4all/pages/Signup.dart';
import 'package:sizer/sizer.dart';
import '../consts/colors.dart';
import 'package:quickalert/quickalert.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  void showAlert() {
    QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: "We have successfully verified your number.",
        confirmBtnText: "Welcome",
        confirmBtnColor: Colors.green,
        onConfirmBtnTap: () {
          Get.to(HomePg());
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
            icon: Icon(Icons.arrow_circle_left),
            color: Colors.black,
            iconSize: 30,
            onPressed: () {
              Get.to(LoginM());
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
                  ),
                )
              ],
            ).marginOnly(left: 30),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'enter OTP we just sent to your phone number',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color.fromRGBO(1, 82, 168, 1),
                  ),
                )
              ],
            ).marginOnly(left: 30),
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
              ).marginOnly(left: 50, right: 50),
            ),
            SizedBox(
              height: 1.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Time Remaining 2:00 minute '),
                SizedBox(
                  width: 5.w,
                ),
                TextButton(onPressed: () {}, child: Text('Resend'))
              ],
            ),
            SizedBox(
              height: 4.h,
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
                onPressed: () {
                  showAlert();
                },
                child: Text('Verify')),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't Have an Account? "),
                TextButton(
                  onPressed: () {
                    Get.to(Signup());
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Color.fromRGBO(1, 82, 168, 1)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }

  _textfieldOTP({required bool ft, last}) {
    return Container(
      height: 60,
      child: AspectRatio(
        aspectRatio: 0.7,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && ft == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          keyboardType: TextInputType.numberWithOptions(),
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width: 2, color: Colors.black12),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(width: 2, color: buttonblue),
            ),
          ),
        ),
      ),
    );
  }
}
