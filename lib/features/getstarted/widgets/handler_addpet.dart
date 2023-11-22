import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class handler_addpet extends StatelessWidget {
  final String text;
  final String image;
  const handler_addpet({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      margin: EdgeInsets.only(bottom: 2.h),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xffDDE2E8)),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1.w),
            blurRadius: 4.w,
            spreadRadius: -3.w,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 104.w,
            height: 104.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 5, top: 10, bottom: 10, right: 5),
              child: Image.asset(image),

              //  Stack(
              //   clipBehavior: Clip.none,
              //   alignment: Alignment.center,
              //   children: [ Text("data")],
              // )
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  5.verticalSpace,
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
                                  fontWeight: FontWeight.w600),
                            ),
                            Icon(
                              Icons.delete,
                              color: Colors.red,
                            )
                            // Image.asset(
                            //   "assets/images/redheart.png",
                            //   width: 52.w,
                            //   height: 40.h,
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  SizedBox(
                    width: 240.w,
                    child: Text(
                      "Lorem ipsum dolor sit amet consec adipisc elit odio, mattis...Lorem ipsum dolor sit amet consec adipisc elit odio, mattis...",
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  10.verticalSpace,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
