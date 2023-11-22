import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class adddogdetails extends StatelessWidget {
  const adddogdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffDDE2E8))),
      child: SizedBox(
        width: 430.w,
        child: ListTile(
          leading: Image.asset(
            "assets/images/dog.png",
            // width: 81.w,
            // height: 81.h,
            fit: BoxFit.contain,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Dog Name Abc",
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff223850)),
              ),
              Image.asset(
                "assets/images/delete.png",
                width: 18.w,
                height: 21.h,
                fit: BoxFit.cover,
              )
            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
            ),
            child: Text(
              "Lorem ipsum dolor sit consectetur adipiscing elit odio, quam tortor taciti aenean luctus nullam enim, ",
              style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff223850)),
            ),
          ),
        ),
      ),
    );
  }
}
