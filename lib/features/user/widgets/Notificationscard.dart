import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notificationscard extends StatefulWidget {
  final String text;
  final String name;
  const Notificationscard({super.key, required this.text, required this.name});

  @override
  State<Notificationscard> createState() => _NotificationscardState();
}

class _NotificationscardState extends State<Notificationscard>
    with SingleTickerProviderStateMixin {
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70.w,
            height: 70.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3.w),
              image: const DecorationImage(
                image: AssetImage("assets/images/service_logo.png"),
                // fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: 280.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dog Name Abc",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Today",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff000000).withOpacity(0.3),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                ),
                5.verticalSpace,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    width: 250.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.text,
                          style: TextStyle(
                              fontSize: 11.sp,
                              color: Color(0xff000000).withOpacity(0.6),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                5.verticalSpace,
                SizedBox(
                  width: 300.w,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name,
                          style: TextStyle(
                              fontSize: 11.sp,
                              color: Color(0xff000000).withOpacity(0.6),
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                ),
                10.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
