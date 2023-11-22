import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverCard extends StatelessWidget {
  final String text;
  final String name;
  final String image;

  // Constructor to receive data
  DiscoverCard({required this.text, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      margin: EdgeInsets.only(bottom: 2.h),
      clipBehavior: Clip.hardEdge, // Fix: Remove parentheses
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xffDDE2E8)),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1.w),
            blurRadius: 4.w,
            spreadRadius: -3.w,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 104.w,
            height: 104,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              text,
                              style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              width: 35.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    "assets/images/star3.png",
                                    width: 12.w,
                                    height: 11.h,
                                  ),
                                  Text(
                                    "4.5",
                                    style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: 65.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Lorem ipsum dolor sit amet consec adipisc elit odio, mattis...",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
