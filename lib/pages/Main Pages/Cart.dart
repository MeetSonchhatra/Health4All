import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:health4all/pages/Main%20Pages/Main%20Extra/orderhistory.dart';
import 'package:health4all/pages/Main%20Pages/Main%20Extra/payment.dart';
import 'package:sizer/sizer.dart';
import '../../consts/alertdialog.dart';
import '../../consts/colors.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomePg());
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 3.h,
                  width: 82.w,
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(17.w, 3.h),
                            backgroundColor: buttonblue,
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(50),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'My Cart',
                            style: TextStyle(fontSize: 9.sp),
                          )),
                      SizedBox(
                        width: 4.w,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(17.w, 3.h),
                            backgroundColor: whiteColor,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Get.to(const History());
                          },
                          child: Text(
                            'Order History',
                            style: TextStyle(color: buttonblue, fontSize: 9.sp),
                          )),
                    ],
                  ),
                ),
              ),
            ).paddingOnly(left: 9.w, right: 9.w),
            SizedBox(
              height: 1.h,
            ),
            Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomePg());
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: whiteColor,
                  ),
                  height: 24.5.h,
                  width: 90.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Covid 19 Test',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ).marginOnly(left: 5.w),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 11.h,
                        width: 90.w,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 9.1.h,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 0.95.h,
                                              horizontal: 1.9.w),
                                          child: Image.asset(
                                            "assets/coronavirus.png",
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '+15% Health Cashback',
                                        style: TextStyle(
                                            fontSize: 7.5.sp,
                                            color: Color.fromRGBO(
                                                27, 195, 154, 1)),
                                      ).marginOnly(left: 3.w)
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 4.1.h,
                                          width: 51.w,
                                          child: Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the.",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 7.5.sp),
                                          ).marginOnly(left: 5.w),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Lab:',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp),
                                        ),
                                        Text(
                                          ' Sterling Labs',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 82, 168, 1),
                                              fontSize: 9.sp),
                                        ),
                                        const Icon(
                                          Icons.verified_user_outlined,
                                          color: Colors.green,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        const Icon(
                                          Icons.calendar_month_outlined,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 0.5.w,
                                        ),
                                        Text(
                                          '12/05/2023',
                                          style: TextStyle(fontSize: 6.sp),
                                        )
                                      ],
                                    ).marginOnly(left: 4.75.w),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Deliver By: ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp),
                                        ),
                                        Text(
                                          'IOTA',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 82, 168, 1),
                                              fontSize: 9.sp),
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        const Icon(
                                          Icons.timer_outlined,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          '09:00 AM',
                                          style: TextStyle(fontSize: 6.sp),
                                        )
                                      ],
                                    ).marginOnly(left: 4.75.w),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color.fromRGBO(234, 233, 234, 1),
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 4.w,
                          ),
                          Container(
                            height: 3.h,
                            width: 7.5.w,
                            padding: const EdgeInsets.all(0),
                            decoration: const BoxDecoration(
                                color: lightblue,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40.0),
                                    bottomLeft: Radius.circular(40.0))),
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                setState(() {
                                  if (itemCount > 0) {
                                    itemCount--;
                                  }
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Color.fromRGBO(63, 81, 81, 1),
                              ),
                            ),
                          ),
                          Container(
                            height: 3.h,
                            width: 12.5.w,
                            padding: const EdgeInsets.all(0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  itemCount.toString(),
                                  style: TextStyle(
                                      color: Color.fromRGBO(7, 32, 60, 1),
                                      fontSize: 12.4.sp),
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                const Icon(
                                  Icons.person_2_outlined,
                                  color: Color.fromRGBO(63, 81, 81, 1),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 3.h,
                            width: 7.5.w,
                            padding: const EdgeInsets.all(0),
                            decoration: const BoxDecoration(
                                color: lightblue,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                setState(() {
                                  itemCount++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Color.fromRGBO(63, 81, 81, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                fixedSize: Size(17.25.w, 3.h),
                                backgroundColor:
                                    const Color.fromRGBO(234, 233, 234, 1),
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Wrap(
                                children: [
                                  Text(
                                    'Delete',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(7, 32, 60, 1)),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Icon(
                                    Icons.delete_outlined,
                                    size: 16,
                                    color: Color.fromRGBO(63, 81, 81, 1),
                                  )
                                ],
                              )),
                          SizedBox(
                            width: 8.w,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                fixedSize: const Size(81, 26),
                                backgroundColor:
                                    const Color.fromRGBO(255, 194, 44, 1),
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                //                   showDialog(
                                //   context: context,
                                //   builder: (BuildContext context) {
                                //     return CustomDialog();
                                //   },
                                // );
                              },
                              child: Text(
                                'Buy Rs: 999/-',
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(7, 32, 60, 1)),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ).marginOnly(left: 2.5.sp, right: 2.5.sp),
            SizedBox(
              height: 1.h,
            ),
            Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60)),
              child: GestureDetector(
                onTap: () {
                  // Get.to(HomePg());
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: whiteColor,
                  ),
                  height: 24.5.h,
                  width: 90.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text(
                            'Covid 19 Test',
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.w500),
                          ).marginOnly(left: 5.w),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 10.5.h,
                        width: 90.w,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 9.1.h,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 0.91.h,
                                              horizontal: 1.86.w),
                                          child: Image.asset(
                                            "assets/BioS.png",
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '+15% Health Cashback',
                                        style: TextStyle(
                                            fontSize: 7.5.sp,
                                            color: Color.fromRGBO(
                                                27, 195, 154, 1)),
                                      ).marginOnly(left: 3.w)
                                    ],
                                  ),
                                )),
                            Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 4.1.h,
                                          width: 51.w,
                                          child: Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the.",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 7.5.sp),
                                          ).marginOnly(left: 5.w),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Lab:',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp),
                                        ),
                                        Text(
                                          ' Sterling Labs',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 82, 168, 1),
                                              fontSize: 9.sp),
                                        ),
                                        const Icon(
                                          Icons.verified_user_outlined,
                                          color: Colors.green,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        const Icon(
                                          Icons.calendar_month_outlined,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 0.5.w,
                                        ),
                                        Text(
                                          '12/05/2023',
                                          style: TextStyle(fontSize: 6.sp),
                                        )
                                      ],
                                    ).marginOnly(left: 4.75.sp),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Deliver By: ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 9.sp),
                                        ),
                                        Text(
                                          'IOTA',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 82, 168, 1),
                                              fontSize: 9.sp),
                                        ),
                                        SizedBox(
                                          width: 11.w,
                                        ),
                                        const Icon(
                                          Icons.timer_outlined,
                                          size: 12,
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          '09:00 AM',
                                          style: TextStyle(fontSize: 6.sp),
                                        )
                                      ],
                                    ).marginOnly(left: 4.75.w),
                                  ],
                                ))
                          ],
                        ),
                      ),
                      const Divider(
                        color: Color.fromRGBO(234, 233, 234, 1),
                        thickness: 2,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 4.w,
                          ),
                          Container(
                            height: 3.h,
                            width: 7.5.w,
                            padding: const EdgeInsets.all(0),
                            decoration: const BoxDecoration(
                                color: lightblue,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40.0),
                                    bottomLeft: Radius.circular(40.0))),
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                setState(() {
                                  if (itemCount > 0) {
                                    itemCount--;
                                  }
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Color.fromRGBO(63, 81, 81, 1),
                              ),
                            ),
                          ),
                          Container(
                            height: 3.h,
                            width: 12.5.w,
                            padding: const EdgeInsets.all(0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  itemCount.toString(),
                                  style: TextStyle(
                                      color: Color.fromRGBO(7, 32, 60, 1),
                                      fontSize: 12.5.sp),
                                ),
                                SizedBox(
                                  width: 1.w,
                                ),
                                const Icon(
                                  Icons.person_2_outlined,
                                  color: Color.fromRGBO(63, 81, 81, 1),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 3.h,
                            width: 7.5.w,
                            padding: const EdgeInsets.all(0),
                            decoration: const BoxDecoration(
                                color: lightblue,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(40),
                                    bottomRight: Radius.circular(40))),
                            child: IconButton(
                              padding: const EdgeInsets.all(0),
                              onPressed: () {
                                setState(() {
                                  itemCount++;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                color: Color.fromRGBO(63, 81, 81, 1),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8.w,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                fixedSize: Size(17.25.w, 3.h),
                                backgroundColor:
                                    const Color.fromRGBO(234, 233, 234, 1),
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Wrap(
                                children: [
                                  Text(
                                    'Delete',
                                    style: TextStyle(
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(7, 32, 60, 1)),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Icon(
                                    Icons.delete_outlined,
                                    size: 16,
                                    color: Color.fromRGBO(63, 81, 81, 1),
                                  )
                                ],
                              )),
                          SizedBox(
                            width: 8.w,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(0),
                                fixedSize: Size(20.25.w, 3.h),
                                backgroundColor:
                                    const Color.fromRGBO(255, 194, 44, 1),
                                elevation: 0,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Buy Rs:999/-',
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    color: Color.fromRGBO(7, 32, 60, 1)),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ).marginOnly(left: 2.5.w, right: 2.5.w),
            SizedBox(
              height: 2.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const Payment());
              },
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 194, 44, 1),
                    borderRadius: BorderRadius.circular(40)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.8.w, vertical: 1.4.h),
                  child: Text(
                    'Proceed to Book (2 Tests)      Subtotal: 1689/-',
                    style: TextStyle(fontSize: 12.4.sp),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
