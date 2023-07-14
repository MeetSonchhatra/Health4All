import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/colors.dart';
import 'package:health4all/pages/user-side/Login/LoginPg.dart';
import 'package:health4all/pages/user-side/Login/OTP.dart';
import 'package:health4all/pages/user-side/Login/Signup.dart';
import 'package:sizer/sizer.dart';

class LoginM extends StatefulWidget {
  const LoginM({super.key});

  @override
  State<LoginM> createState() => _LoginMState();
}

class _LoginMState extends State<LoginM> {
  TextEditingController phone = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: whiteColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_circle_left_rounded),
          color: const Color.fromRGBO(1, 82, 168, 1),
          onPressed: () {
            Get.to(const LoginPage());
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Login",
                style: TextStyle(
                  color: const Color.fromRGBO(51, 51, 51, 1),
                  fontSize: 15.6.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "to your HealthBuddy Account",
                style: TextStyle(
                  color: const Color.fromRGBO(1, 82, 168, 1),
                  fontSize: 15.6.sp,
                ),
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
              Text(
                "Enter your Mobile number",
                style: TextStyle(
                  color: fontblack,
                  fontSize: 12.4.sp,
                ),
              ),
              TextFormField(
                controller: phone,
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
              ),
              Text(
                "We will send One Time Password on this number",
                style: TextStyle(
                  color: fontblack,
                  fontSize: 9.sp,
                ),
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
                    Get.to(
                      OTP(
                        phone: phone.text,
                      ),
                    );
                  }
                },
                child: const Text('Generate OTP'),
              ),
              Row(
                children: [
                  const Text("Don't Have an Account?"),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const Signup());
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Color.fromRGBO(1, 82, 168, 1)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
