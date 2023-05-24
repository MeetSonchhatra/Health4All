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
                  height: 26,
                  width: 350,
                  child: Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(68, 26),
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
                            'My Cart',
                            style: TextStyle(fontSize: 12),
                          )),
                      SizedBox(
                        width: 4.w,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(68, 26),
                            backgroundColor: whiteColor,
                            elevation: 0,
                          ),
                          onPressed: () {
                            Get.to(const History());
                          },
                          child: const Text(
                            'Order History',
                            style: TextStyle(color: buttonblue, fontSize: 12),
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
                  height: 203,
                  width: 350,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Covid 19 Test',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ).marginOnly(left: 20),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 92,
                        width: 350,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 80,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 8),
                                          child: Image.asset(
                                            "assets/coronavirus.png",
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        '+15% Health Cashback',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color.fromRGBO(
                                                27, 195, 154, 1)),
                                      ).marginOnly(left: 12)
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
                                          height: 36,
                                          width: 203,
                                          child: const Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the.",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10),
                                          ).marginOnly(left: 20),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Lab:',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                        const Text(
                                          ' Sterling Labs',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 82, 168, 1),
                                              fontSize: 12),
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
                                        const Text(
                                          '12/05/2023',
                                          style: TextStyle(fontSize: 8),
                                        )
                                      ],
                                    ).marginOnly(left: 18),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Deliver By: ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                        const Text(
                                          'IOTA',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 82, 168, 1),
                                              fontSize: 12),
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
                                        const Text(
                                          '09:00 AM',
                                          style: TextStyle(fontSize: 8),
                                        )
                                      ],
                                    ).marginOnly(left: 18),
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
                            height: 26,
                            width: 30,
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
                            height: 26,
                            width: 50,
                            padding: const EdgeInsets.all(0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  itemCount.toString(),
                                  style: const TextStyle(
                                      color: Color.fromRGBO(7, 32, 60, 1),
                                      fontSize: 16),
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
                            height: 26,
                            width: 30,
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
                                fixedSize: const Size(69, 26),
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
                                children: const [
                                  Text(
                                    'Delete',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(7, 32, 60, 1)),
                                  ),
                                  SizedBox(
                                    width: 4,
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
                              child: const Text(
                                'Buy Rs: 999/-',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(7, 32, 60, 1)),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ).marginOnly(left: 10, right: 10),
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
                  height: 203,
                  width: 350,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          const Text(
                            'Covid 19 Test',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ).marginOnly(left: 20),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 92,
                        width: 350,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 80,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 8, horizontal: 8),
                                          child: Image.asset(
                                            "assets/BioS.png",
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                      const Text(
                                        '+15% Health Cashback',
                                        style: TextStyle(
                                            fontSize: 10,
                                            color: Color.fromRGBO(
                                                27, 195, 154, 1)),
                                      ).marginOnly(left: 12)
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
                                          height: 36,
                                          width: 203,
                                          child: const Text(
                                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the.",
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10),
                                          ).marginOnly(left: 20),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Lab:',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                        const Text(
                                          ' Sterling Labs',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 82, 168, 1),
                                              fontSize: 12),
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
                                        const Text(
                                          '12/05/2023',
                                          style: TextStyle(fontSize: 8),
                                        )
                                      ],
                                    ).marginOnly(left: 18),
                                    SizedBox(
                                      height: 1.h,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Deliver By: ',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 12),
                                        ),
                                        const Text(
                                          'IOTA',
                                          style: TextStyle(
                                              color:
                                                  Color.fromRGBO(1, 82, 168, 1),
                                              fontSize: 12),
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
                                        const Text(
                                          '09:00 AM',
                                          style: TextStyle(fontSize: 8),
                                        )
                                      ],
                                    ).marginOnly(left: 18),
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
                            height: 26,
                            width: 30,
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
                            height: 26,
                            width: 50,
                            padding: const EdgeInsets.all(0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  itemCount.toString(),
                                  style: const TextStyle(
                                      color: Color.fromRGBO(7, 32, 60, 1),
                                      fontSize: 16),
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
                            height: 26,
                            width: 30,
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
                                fixedSize: const Size(69, 26),
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
                                children: const [
                                  Text(
                                    'Delete',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromRGBO(7, 32, 60, 1)),
                                  ),
                                  SizedBox(
                                    width: 4,
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
                              onPressed: () {},
                              child: const Text(
                                'Buy Rs:999/-',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(7, 32, 60, 1)),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ).marginOnly(left: 10, right: 10),
            SizedBox(
              height: 2.h,
            ),
            GestureDetector(
              onTap: () {
                Get.to(const Payment());
              },
              child: Container(
                height: 44,
                width: 350,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 194, 44, 1),
                    borderRadius: BorderRadius.circular(40)),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Proceed to Book (2 Tests)      Subtotal: 1689/-',
                    style: TextStyle(fontSize: 16),
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
