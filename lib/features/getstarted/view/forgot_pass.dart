import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/customt_textfiled.dart';
import 'package:provider/provider.dart';

class ForgoScreen extends StatefulWidget {
  const ForgoScreen({super.key});

  @override
  State<ForgoScreen> createState() => _ForgoScreenState();
}

class _ForgoScreenState extends State<ForgoScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();

    return Scaffold(
        backgroundColor: Color(0xffF4F6FA),
        appBar: AppBar(
          backgroundColor: Color(0xffF4F6FA),
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
              // Image.asset("assets/images/splash.png",
              //     width: 146.71.w, height: 120.h),
              80.verticalSpace,
              const Text(
                "Enter Your Verification\nEmail ID",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
              50.verticalSpace,
              SizedBox(
                width: 382.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email ID",
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.normal),
                    ),
                    10.verticalSpace,
                    const CustomTextField(
                      hintText: "Enter your email",
                      prefixIconPath: "assets/icons/input-email.svg",
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              Custombutton(
                buttonText: "CONTINUE",
                onPressed: () {
                  controller.goToForgotOTP();
                },
              ),
            ],
          ),
        ));
  }
}
