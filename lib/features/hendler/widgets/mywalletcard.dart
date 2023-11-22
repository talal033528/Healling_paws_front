import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class handlermywalletcard extends StatelessWidget {
  final String image;
  const handlermywalletcard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 2.h),
      decoration: BoxDecoration(
        color: Color(0xffF4F6FA),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
            ),
            child: Container(
              width: 104.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Color(0XFFDDE2E8)),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/bank.png",
                  width: 30.w,
                  height: 30.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                SizedBox(
                  width: 300.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 125.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Transfer",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w700),
                            ),
                            Image.asset(
                              image,
                              width: 25.w,
                              height: 25.h,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "\$560.00",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                5.verticalSpace,
                SizedBox(
                  width: 300.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Aug 25, 2022 | 10:00 AM",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Color(0xff000000).withOpacity(0.6),
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Debit,",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Color(0xff000000).withOpacity(0.6),
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     children: [
                //       Text(
                //         "Fri | Sep 22, 2023",
                //         style: TextStyle(
                //             fontSize: 12.sp,
                //             color: Color(0xff000000).withOpacity(0.6),
                //             fontWeight: FontWeight.w400),
                //       ),
                //     ],
                //   ),
                // ),
                10.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
