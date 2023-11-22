import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/view/user_profile.dart';
import 'package:provider/provider.dart';

class handler_MarkasCompleted extends StatefulWidget {
  const handler_MarkasCompleted({super.key});

  @override
  State<handler_MarkasCompleted> createState() =>
      _handler_MarkasCompletedState();
}

class _handler_MarkasCompletedState extends State<handler_MarkasCompleted> {
  bool changeContainer = false;
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Container(
          decoration: BoxDecoration(color: Colors.transparent),
          width: 390.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  controller.goTochatscreen();
                },
                child: Container(
                  width: 150.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xff007AB1),
                        Color(0xff007AB1),
                        Color(0xff29B6F6)
                      ],
                    ),
                  ),
                  child: Center(
                      child: Text(
                    "Message",
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w900),
                  )),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    // Toggle the value of changeContainer on tap
                    setState(() {
                      changeContainer = !changeContainer;
                    });
                  },
                  child: changeContainer
                      ? Container(
                          width: 222.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xff92C83E),
                                Color(0xff92C83E),
                              ],
                            ),
                          ),
                          child: Center(
                            child: SizedBox(
                              width: 130.w,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.check_circle,
                                    color: Color(0xffffffff),
                                  ),
                                  Text(
                                    "Completed",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0xffffffff),
                                        fontWeight: FontWeight.w900),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      : Container(
                          width: 222.w,
                          height: 50.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(26),
                            gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color(0xff223850),
                                Color(0xff303030),
                              ],
                            ),
                          ),
                          child: Center(
                              child: Text(
                            "Mark as Completed",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w900),
                          )),
                        )),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "Booking Details",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              20.verticalSpace,
              Container(
                width: 390.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffDDE2E8)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    20.verticalSpace,
                    SizedBox(
                      width: 340.w,
                      child: Text(
                        "User Details",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        "assets/images/profile2.png",
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sara William",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.goTouserprofile();
                            },
                            child: Text(
                              "View Profile",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Color(0xff29B6F6),
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          10.verticalSpace,
                          Text(
                            "New York",
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Color(0xff000000).withOpacity(0.6),
                                fontWeight: FontWeight.w900),
                          ),
                          10.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "sara.william@domain.com",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Color(0xff000000).withOpacity(0.6),
                                    fontWeight: FontWeight.w900),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.goToviewlocation();
                                },
                                child: Text(
                                  "View Location",
                                  style: TextStyle(
                                      fontSize: 11.sp,
                                      color: Color(0xff29B6F6),
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    20.verticalSpace,
                  ],
                ),
              ),
              20.verticalSpace,
              Container(
                width: 390.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffDDE2E8)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    22.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Booking Details",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    20.verticalSpace,
                    myMarkasCompleted("Pet:", "Dog Name ABC"),
                    10.verticalSpace,
                    myMarkasCompleted("Date:", "September 22, 2023,"),
                    10.verticalSpace,
                    myMarkasCompleted("Start Time:", "03:00 PM"),
                    10.verticalSpace,
                    myMarkasCompleted("End Time:", "09:00 PM"),
                    22.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Additional",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    10.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff000000).withOpacity(0.3),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    20.verticalSpace,
                  ],
                ),
              ),
              20.verticalSpace,
              Container(
                width: 390.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffDDE2E8)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    20.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Payment Details",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    20.verticalSpace,
                    myMarkasCompleted("Charges", "\$30.00 / hr"),
                    10.verticalSpace,
                    myMarkasCompleted("Total Time", "03 hrs"),
                    10.verticalSpace,
                    myMarkasCompleted("Amount", "\$90.00"),
                    10.verticalSpace,
                    myMarkasCompleted("Tax", "\$10.00"),
                    10.verticalSpace,
                    myMarkasCompleted("Sub Total", "\$100.00"),
                    10.verticalSpace,
                    myMarkasCompleted("Payment Method", "Apple Pay"),
                    22.verticalSpace,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget myMarkasCompleted(String name, String text) {
  return SizedBox(
    width: 350.w,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xff000000).withOpacity(0.3),
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        10.verticalSpace,
        Container(
          width: 350.w,
          height: 1,
          color: Color(0xffDDE2E8),
        )
      ],
    ),
  );
}
