// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/consts/routes.dart';
import 'package:health4all/pages/user-side/Login/splashscreen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_types_as_parameter_names
    return Sizer(builder: (BuildContext, Orientation, DeviceType) {
      return GetMaterialApp(
        home: const SplashScreen(),
        debugShowCheckedModeBanner: false,
        //initialRoute: MyRoutes.splashroute,
        getPages: getPages,
      );
    },);
  }
}
