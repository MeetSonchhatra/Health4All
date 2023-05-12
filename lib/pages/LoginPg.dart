import 'package:flutter/material.dart';
import 'package:health4all/consts/colors.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: whiteColor,
        child: Scaffold(
          body: Column(
            children: [
              Transform.rotate(
                angle: -50,
                child: Container(
                  height: 7.h,
                  width: 55.w,
                  margin: EdgeInsets.fromLTRB(76, 70, 76, 10),
                  decoration: BoxDecoration(
                    color: lightblue,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Health",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Roboto',
                          color: Color.fromRGBO(63, 79, 81, 1),
                        ),
                      ),
                      Text(
                        "4",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Roboto',
                          color: Color.fromRGBO(7, 80, 157, 1),
                        ),
                      ),
                      Text(
                        "All",
                        style: TextStyle(
                          fontSize: 20.sp,
                          fontFamily: 'Roboto',
                          color: Color.fromRGBO(63, 79, 81, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Image(image: AssetImage('assets/Login.jpeg')),
              SizedBox(
                height: 5.h,
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
                  child: Text('Sign Up')),
              SizedBox(
                height: 3.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(
                      width: 2.0,
                      color: buttonblue,
                    ),
                    minimumSize: Size(300, 44),
                    backgroundColor: whiteColor,
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(color: buttonblue),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
