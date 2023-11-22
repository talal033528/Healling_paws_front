import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class mypetsdetails extends StatelessWidget {
  final String text;
  final String name;
  final String image;

  // Constructor to receive data
  mypetsdetails({required this.text, required this.name, required this.image});

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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    maxLines: 4,
                    name,
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Color(0xff48576E),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
