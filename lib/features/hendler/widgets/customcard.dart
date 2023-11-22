import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final String text;
  final String name;

  CustomContainer({
    required this.text,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffDDE2E8)),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(
              "assets/images/profile.png",
              width: 43.w,
              fit: BoxFit.cover,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff223850),
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff223850),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "September 25, 2023",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff223850),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "September 25, 2023",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff223850),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "View Details",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0XFF29B6F6),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
