import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:provider/provider.dart';

class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();

    return Scaffold(
      backgroundColor: Color(0xffF4F6FA),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F6FA),
        // leading: GestureDetector(
        //   onTap: () {
        //     Navigator.pop(context);
        //   },
        //   child: Icon(
        //     Icons.chevron_left,
        //     color: Colors.black,
        //   ),
        // ),
        title: Text(
          "Select User",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff223850),
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/icons/getstart.svg",
              width: 153.w,
              height: 151.h,
            ),
            120.verticalSpace,
            GestureDetector(
              onTap: () {
                controller.goToLoginSelect("USER");
              },
              child: Column(
                children: [
                  Container(
                    width: 390.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                            // begin: Alignment.topCenter,
                            // end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff007AB1),
                              Color(0xff007AB1),
                              Color(0xff29B6F6)
                            ])),
                    child: Center(
                      child: Text(
                        "Continue as a User",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  // Image.asset("assets/images/splash.png",
                  //     width: 154.w, height: 154.h),
                ],
              ),
            ),
            30.verticalSpace,
            GestureDetector(
              onTap: () {
                controller.goToLoginSelect("Handler");
              },
              child: Column(
                children: [
                  Container(
                    width: 390.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        gradient: LinearGradient(
                            // begin: Alignment.topCenter,
                            // end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff007AB1),
                              Color(0xff007AB1),
                              Color(0xff29B6F6)
                            ])),
                    child: Center(
                        child: Text(
                      "Continue as a Handler",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 100.h,
        child: GestureDetector(
          onTap: () {
            controller.gotoPrivacyPolicy();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.5, // Adjust the opacity level as needed
                child: Text(
                  "By sign-in, you agree to our",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.black,
                    // decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Text(
                " Terms & Conditions | Privacy Policy",
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
