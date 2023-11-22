import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MyDropdownWidget extends StatelessWidget {
  final List<String> options;
  final String selectedValue;
  final Function(String) onChanged;

  const MyDropdownWidget({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
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
      child: DropdownButtonFormField<String>(
        style: TextStyle(
          color: const Color(0xff000000),
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15.0,
            horizontal: 16.0,
          ),
          hintStyle: TextStyle(
            color: const Color(0xff000000),
            fontSize: 14.sp,
            fontWeight: FontWeight.normal,
          ),
          filled: true,
          fillColor: Colors.white, // Background color
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
        ),
        value: selectedValue,
        items: options
            .map((String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ))
            .toList(),
        onChanged: (s) => onChanged(s!),
      ),
    );
  }
}
