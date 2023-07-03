import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:health4all/consts/alertdialog.dart';
import 'package:health4all/pages/user-side/Main%20Pages/Cart.dart';
import 'package:line_icons/line_icons.dart';
import 'package:sizer/sizer.dart';
import '../../../../api.dart';
import '../../../../consts/colors.dart';
import '../../../../model/appointmentbookingmodel.dart';
import '../../Search/Search.dart';
import '../../profile/profile.dart';
import '../HomeM.dart';
import '../More.dart';
import '../Reports.dart';
import 'Notifications.dart';
import 'orderhistory.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

 final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();


class Payment extends StatefulWidget {
  const Payment({super.key, required this.amount, required this.time});
  final String time, amount;

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  @override
  void initState(){
    super.initState();
    Noti.initialize(flutterLocalNotificationsPlugin);
  } 
  int itemCount = 0;
  int num = 0;
  var padding = const EdgeInsets.symmetric(horizontal: 18, vertical: 5);
  double gap = 10;
  int _index = 2;
  final _pageData = [
    const HomeM(),
    const Report(),
    const Cart(),
    const MorePg()
  ];
  PageController controller = PageController();
  final _area = [
    "Vastrapur,Ahemdabad",
    "Thaltej,Ahemdabad",
    "Chankheda,Ahemdabad",
    "Sabarmati,Ahemdabad",
    "Bopal,Ahemdabad",
    "Ambli,Ahemdabad",
    "SG Highway,Ahemdabad"
  ];
  String? _selectedarea = "Vastrapur,Ahemdabad";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 2,
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
        toolbarHeight: 170,
        flexibleSpace: Stack(
          children: [
            Column(
              children: [
                Stack(children: [
                  SizedBox(
                    width: 40.w,
                    child: DropdownButtonFormField(
                      style: TextStyle(
                          fontSize: 9.sp, color: Color.fromRGBO(3, 9, 19, 1)),
                      value: _selectedarea,
                      items: _area
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (val) {
                        setState(() {
                          _selectedarea = val as String;
                        });
                      },
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: buttonblue,
                      ),
                      dropdownColor: lightblue,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromRGBO(250, 250, 250, 1))),
                        labelText: "Location",
                        labelStyle: TextStyle(
                            fontSize: 8.sp,
                            color: Color.fromRGBO(197, 197, 197, 1)),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.notifications_none_outlined),
                    onPressed: () {
                      Get.to(const Notifications());
                    },
                    color: Colors.black,
                  ).marginOnly(left: 67.5.w, top: 0.h),
                ]).marginOnly(left: 0, top: 2.3.h),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                    child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _index = 0;
                        });
                        Get.to(const Profile());
                      },
                      child: const CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/person.png",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      width: 70.w,
                      color: const Color.fromRGBO(250, 250, 250, 1),
                      child: TextField(
                        readOnly: true,
                        onTap: () {
                          Get.to(const Search());
                        },
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.search),
                            prefixIconColor:
                                const Color.fromRGBO(197, 197, 197, 1),
                            hintText: "Search Test or Laboratory",
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10),
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(197, 197, 197, 1),
                                fontSize: 9.sp),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(60),
                              borderSide: const BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(60),
                                borderSide:
                                    const BorderSide(color: Colors.white))),
                      ),
                    )
                  ],
                ).marginOnly(left: 5.w))
              ],
            ),
          ],
        ),
      ),
      extendBody: true,
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
                  width: 90.w,
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
                            Navigator.of(context).pop();
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
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60))),
              child: Container(
                decoration: BoxDecoration(
                    color: whiteColor, borderRadius: BorderRadius.circular(20)),
                height: 47.h,
                width: 90.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 4.h,
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
                    Container(
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
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Type of Test:',
                          style: TextStyle(
                              color: Color.fromRGBO(4, 6, 60, 1),
                              fontSize: 9.sp),
                        ),
                        SizedBox(
                          width: 39.w,
                        ),
                        Text(
                          'COVID RT-PCR',
                          style: TextStyle(
                              color: Color.fromRGBO(155, 155, 155, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ).marginOnly(left: 7.5.w),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Test Charge:',
                          style: TextStyle(
                              color: Color.fromRGBO(4, 6, 60, 1),
                              fontSize: 9.sp),
                        ),
                        SizedBox(
                          width: 50.w,
                        ),
                        Text(
                          '999.00',
                          style: TextStyle(
                              color: Color.fromRGBO(155, 155, 155, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ).marginOnly(left: 7.5.w),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Delivery:',
                          style: TextStyle(
                              color: Color.fromRGBO(4, 6, 60, 1),
                              fontSize: 9.sp),
                        ),
                        SizedBox(
                          width: 57.w,
                        ),
                        Text(
                          '00.00',
                          style: TextStyle(
                              color: Color.fromRGBO(155, 155, 155, 1),
                              fontSize: 9.sp),
                        )
                      ],
                    ).marginOnly(left: 7.5.w),
                    SizedBox(
                      height: 1.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Promo code:',
                          style: TextStyle(
                              color: Color.fromRGBO(4, 6, 60, 1),
                              fontSize: 9.sp),
                        ),
                        SizedBox(
                          width: 28.w,
                        ),
                        Text(
                          '+15% Health Cashback',
                          style: TextStyle(
                              fontSize: 9.sp,
                              color: Color.fromRGBO(27, 195, 154, 1)),
                        ),
                      ],
                    ).marginOnly(left: 7.5.w),
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
                            onPressed: () {},
                            child: Text(
                              'Buy Rs: 999/-',
                              style: TextStyle(
                                  fontSize: 9.sp,
                                  color: Color.fromRGBO(7, 32, 60, 1)),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Guaranteed report delivery:',
                          style: TextStyle(
                              color: Color.fromRGBO(4, 6, 60, 1),
                              fontSize: 11.4.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          ' 23 Mar 2023',
                          style: TextStyle(
                              color: Color.fromRGBO(1, 82, 168, 1),
                              fontSize: 11.4.sp,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ).marginOnly(left: 5.w),
                    Row(
                      children: [
                        Text(
                          'If you Order now',
                          style: TextStyle(
                              color: Color.fromRGBO(155, 155, 155, 1),
                              fontSize: 11.4.sp),
                        ),
                      ],
                    ).marginOnly(left: 5.w),
                  ],
                ),
              ),
            ).marginOnly(left: 2.5.w, right: 2.5.w),
            SizedBox(
              height: 2.h,
            ),
            GestureDetector(
              onTap: () async {
                appointmentbooking_Model data = await AptbookingApi()
                    .AptbookingList(widget.time, widget.amount);
                if (data.code == 200) {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return CustomDialog();
                    },
                  );
                  Noti.showBigTextNotification(title: "Booking confirmed", body: "Your booking has been confirmed", fln: flutterLocalNotificationsPlugin);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(data.message.toString())));
                }
              },
              child: Container(
                height: 5.h,
                width: 90.w,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 194, 44, 1),
                    borderRadius: BorderRadius.circular(40)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 2.8, vertical: 1.4.h),
                  child: Text(
                    'Confirm and Proceed to Pay       Total: 1689/-',
                    style: TextStyle(fontSize: 12.4.sp),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              //  border: Border.all(color: Colors.black, width: 2),
              color: whiteColor,

              // borderRadius: const BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                  spreadRadius: -10,
                  blurRadius: 60,
                  color: Colors.black.withOpacity(0.4),
                  offset: const Offset(0, 25),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GNav(
              curve: Curves.fastOutSlowIn,
              duration: const Duration(milliseconds: 900),
              tabs: [
                GButton(
                  gap: gap,
                  icon: LineIcons.home,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'Home',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttonblue,
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.book,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'Reports',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttonblue,
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: LineIcons.shoppingCart,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'My Cart',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttonblue,
                  iconSize: 24,
                  padding: padding,
                ),
                GButton(
                  gap: gap,
                  icon: Icons.more_horiz,
                  iconColor: buttonblue,
                  iconActiveColor: Colors.white,
                  text: 'More',
                  textSize: 12.sp,
                  textColor: Colors.white,
                  backgroundColor: buttonblue,
                  iconSize: 24,
                  padding: padding,
                ),
              ],
              selectedIndex: _index,
              onTabChange: (index) {
                setState(() {
                  _index = index;
                });
                controller.jumpToPage(index);
              },
            ),
          ),
        ),
      ),
    ));
  }
}
