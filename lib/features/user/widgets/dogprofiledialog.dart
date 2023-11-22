import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DogProfileDialog {
  DogProfileDialog(BuildContext context);

  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero, // To remove default padding

          content: SingleChildScrollView(
            child: Container(
              width: 600.w,
              // height: 438.h,
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xffA7C4D1), width: 2),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 134.h,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/createprofile_bg.png"),
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                width: 44.w,
                                height: 44.h,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(6),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: -0.1,
                                      blurRadius: 13,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/cancel.png",
                                    width: 14.w,
                                    height: 14.h,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          bottom: -70,
                          child: Image.asset(
                            "assets/images/createprofile_img.png",
                            width: 110.w,
                            height: 110.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  15.verticalSpace,
                  Container(
                    margin: EdgeInsets.only(left: 110),
                    width: 250.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ABC Paws Service",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 100.w,
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 65.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        "assets/images/locationmark.png",
                                        width: 8,
                                      ),
                                      Text(
                                        "1.6 miles",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  10.verticalSpace,

                  Container(
                    margin: EdgeInsets.only(left: 110),
                    width: 250.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: Row(
                            children: [
                              SizedBox(
                                  width: 80.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Image.asset(
                                        "assets/images/star3.png",
                                        width: 10,
                                      ),
                                      Text(
                                        "4.5 Rating",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  30.verticalSpace,
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 390.w,
                    child: Text(
                      "About",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  12.verticalSpace,
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 390.w,
                    child: Text(
                      "Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at  vel purus proin eleifend nisi dictum.",
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xff000000).withOpacity(0.9),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  30.verticalSpace,
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    width: 390.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Add your logic here
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(26),
                                border: Border.all(color: Color(0xffDDE2E8))),
                            width: 130.w,
                            height: 40.h,
                            child: Center(
                              child: Text(
                                "View Profile",
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xff007AB1), Color(0xff29B6F6)],
                              ),
                              borderRadius: BorderRadius.circular(26),
                              border: Border.all(color: Color(0xffDDE2E8))),
                          width: 175.w,
                          height: 40.h,
                          child: Center(
                            child: Text(
                              "Book An Appointment",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        )
                      ],
                    ),
                  ),
                  30.verticalSpace,

                  // Add your additional content here
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
