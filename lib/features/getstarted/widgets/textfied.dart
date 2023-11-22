import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AuthTextField extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final bool obsecure;
  final String suffixImagePath; // Use String for the image path
  final bool showsuffixicon;
  final TextEditingController controller;

  const AuthTextField({
    Key? key,
    required this.labeltext,
    required this.hinttext,
    required this.suffixImagePath, // Updated to use a String for the image path
    required this.showsuffixicon,
    required this.controller,
    required this.obsecure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF9C9C9C), // Shadow color
            blurRadius: 4.0,
            spreadRadius: 0.1,
            offset: Offset(0, 2.0),
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obsecure,
        style: TextStyle(color: Color(0xFf9BA8BB), fontSize: 14),
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: TextStyle(color: Color(0xff000000), fontSize: 14.sp),
          hintText: hinttext,
          filled: true,
          fillColor: Colors.white,
          hintStyle: const TextStyle(fontSize: 14, color: Color(0xFf9BA8BB)),
          suffixIcon: showsuffixicon
              ? Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 19.w,
                    child: SvgPicture.asset(
                      suffixImagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              : null,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffDBE2EC),
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffDBE2EC),
            ),
            borderRadius: BorderRadius.circular(100),
          ),

          // focusedBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(100),
          //   borderSide: const BorderSide(color: Color(0xffDBE2EC)),
          // ),
          // disabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(100),
          //   borderSide: const BorderSide(color: Color(0xffDBE2EC)),
          // ),
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(100),
          //   borderSide: const BorderSide(color: Color(0xffDBE2EC)),
          // ),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(100),
          //   borderSide: const BorderSide(color: Color(0xffDBE2EC)),
          // ),
          // errorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(100),
          //   borderSide: const BorderSide(color: Color(0xffDBE2EC)),
          // ),
          // focusedErrorBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(100),
          //   borderSide: const BorderSide(color: Color(0xffDBE2EC)),
          // ),
        ),
      ),
    );
  }
}
