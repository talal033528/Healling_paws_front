import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class favoritescards extends StatelessWidget {
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
            height: 104,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              image: const DecorationImage(
                image: AssetImage("assets/images/dog1.png"),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dog Name Abc",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w600),
                            ),
                            Image.asset(
                              "assets/images/redheart.png",
                              width: 52.w,
                              height: 40.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ABC Paws Service",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w400),
                      ),

                      // Container(width: 35.w,
                      // height: 35.h,
                      // decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white,),
                      // child: Center(child:),)
                    ],
                  ),
                  5.verticalSpace,
                  SizedBox(
                    width: 120.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 35.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "Lorem ipsum dolor sit amet consec adipisc elit odio, mattis...",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w400),
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
