import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Custombutton extends StatelessWidget {
  String buttonText;
  VoidCallback onPressed;

  Custombutton({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 390.w,
        height: 50.h,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff007AB1), Color(0xff007AB1), Color(0xff29B6F6)],
            ),
            borderRadius: BorderRadius.all(Radius.circular(26.r))),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 16.sp),
          ),
        ),
      ),
    );
  }
}
