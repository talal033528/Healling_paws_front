import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();

    return Scaffold(
        backgroundColor: Color(0xffF4F6FA),
        appBar: AppBar(
          backgroundColor: Color(0xffF4F6FA),
          title: Text(
            "Sign In",
            style: TextStyle(fontSize: 16.sp, color: Color(0xff223850)),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              70.verticalSpace,
              SvgPicture.asset(
                "assets/icons/getstart.svg",
                width: 269.w,
                height: 120.h,
              ),
              50.verticalSpace,
              SizedBox(
                width: 390.w,
                height: 55.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 114.w,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '+1',
                          hintStyle: TextStyle(
                              color: Color(0xff48576E),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                          filled: true,
                          fillColor: Colors.white, // Use a contrasting color
                          suffixIcon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                            size: 14,
                          ),
                          prefixIcon:
                              // Icon(Icons.flag),

                              Image.asset(
                            "assets/images/flag1.png",
                            width: 3.w,
                            height: 3.h,
                            // fit: BoxFit.cover,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffDBE2EC)),
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffDBE2EC)),
                            borderRadius: BorderRadius.circular(100.r),
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: 265.w,
                      height: 55.h,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          // labelText: '234 567890',
                          // labelStyle: TextStyle(color: Color(0xff48576E)),
                          hintText: '234 567890',
                          fillColor: Colors.white, filled: true,
                          hintStyle: TextStyle(color: Color(0xff48576E)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffDBE2EC)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffDBE2EC)),
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              40.verticalSpace,
              Custombutton(
                buttonText: "Sign In",
                onPressed: () {
                  controller.goToOTP();
                },
              ),
              const Spacer(),
              40.verticalSpace,
            ],
          ),
        ));
  }
}
