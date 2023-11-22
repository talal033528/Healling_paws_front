import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class viewlocation extends StatelessWidget {
  const viewlocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/homebg.png"),
      )),
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SizedBox(
            width: 390.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 94.w,
                  height: 37.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Color(0xff48576E))),
                  child: Center(
                    child: Text(
                      "3.5 miles",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xff48576E),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  width: 55.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xff48576E))),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/location.svg',
                      width: 33.w,
                      height: 33.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
          centerTitle: true,
          title: Text(
            "Location",
            style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xff0000000),
                fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/profile.png",
                width: 56.w,
                height: 56.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
