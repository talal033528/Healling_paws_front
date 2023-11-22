import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String? prefixIconPath; // Path to the prefix icon
  final String? suffixIconPath; // Path to the suffix icon
  final String hintText;

  const CustomTextField({
    Key? key,
    this.prefixIconPath, // Pass null if you don't want a prefix icon
    this.suffixIconPath, // Pass null if you don't want a suffix icon
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: TextField(
        style: TextStyle(
          color: const Color(0xff9C9C9C),
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 16.0,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: const Color(0xff9C9C9C),
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
          filled: true,
          fillColor: Colors.white, // Background color
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.r),
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xff9C9C9C),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.r),
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xff9C9C9C),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.r),
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xff9C9C9C),
            ),
          ),
          prefixIcon: prefixIconPath != null
              ? Padding(
                  padding: EdgeInsets.all(13.w),
                  child: SvgPicture.asset(prefixIconPath!),
                )
              : null, // Conditionally display the prefix icon
          suffixIcon: suffixIconPath != null
              ? Padding(
                  padding: EdgeInsets.all(13.w),
                  child: SvgPicture.asset(suffixIconPath!),
                )
              : null, // Conditionally display the suffix icon
        ),
      ),
    );
  }
}

class CustomTextFieldonlyhinttext extends StatelessWidget {
  final String hintText;

  const CustomTextFieldonlyhinttext({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: const Color(0xff9C9C9C),
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 16.0,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: const Color(0xff9C9C9C),
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
        ),
        filled: true,
        fillColor: Colors.white, // Background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: const BorderSide(width: 1, color: Color(0xffFFE9B8)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.r),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xff9C9C9C),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.r),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xff9C9C9C),
          ),
        ),
      ),
      maxLines: 1,
    );
  }
}

class CustomTextFieldwithicon extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon; // The icon to be used as the suffix icon

  const CustomTextFieldwithicon({
    Key? key,
    required this.hintText,
    this.suffixIcon, // Pass the IconData for the suffix icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: const Color(0xff9C9C9C),
        fontSize: 14.sp,
        fontWeight: FontWeight.normal,
      ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 16.0,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: const Color(0xff9C9C9C),
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
        ),
        filled: true,
        fillColor: Colors.white, // Background color
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color(0xffFFE9B8)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.r),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xff9C9C9C),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.r),
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xff9C9C9C),
          ),
        ),
        suffixIcon: suffixIcon != null
            ? Icon(
                suffixIcon,
                color: const Color(0xff9C9C9C),
              )
            : null, // Conditionally display the suffix icon
      ),
      maxLines: 1,
    );
  }
}
