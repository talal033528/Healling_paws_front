import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class ForgotOTPScreen extends StatefulWidget {
  const ForgotOTPScreen({super.key});

  @override
  State<ForgotOTPScreen> createState() => _ForgotOTPScreenState();
}

class _ForgotOTPScreenState extends State<ForgotOTPScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final timerController =
        Provider.of<GetStartedViewModel>(context, listen: false);
    timerController.startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();

    return Scaffold(
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 10),
          child: !controller.otptimercompleted
              ? CircularPercentIndicator(
                  radius: 9.w,
                  lineWidth: 5,
                  percent: controller.otptimercompleted
                      ? 1.0
                      : controller.otpcurrent / controller.otpstart,
                  center: Text(
                    controller.otptimercompleted
                        ? 'Timer Completed'
                        : '${controller.otpcurrent} s',
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  progressColor: const Color(0xffFFB30F),
                )
              : GestureDetector(
                  onTap: () {
                    controller.resendCode();
                  },
                  child: RichText(
                      text: const TextSpan(
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: "Don't received the code? Resend ",
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                      TextSpan(
                          text: 'Resend',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xffFFB30F))),
                    ],
                  )),
                ),
        ),
        backgroundColor: Color(0xffF4F6FA),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              70.verticalSpace,
              // Image.asset("assets/images/splash.png",
              //     width: 146.71.w, height: 120.h),
              80.verticalSpace,
              const Text(
                "Enter Your OTP",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
              ),
              50.verticalSpace,
              SizedBox(
                width: 382.w,
                child: PinCodeTextField(
                  appContext: context,
                  length: 6,
                  controller: controller.otpController,
                  onChanged: (value) {
                    // Check if the OTP field is filled, then move to the next field
                    // if (value.length == widget.length) {
                    //   FocusScope.of(context).nextFocus();
                    // }
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    borderWidth: 1,
                    fieldHeight: 52.h,
                    fieldWidth: 52.w,
                    inactiveColor: Colors.grey,
                    activeColor: Colors.black,
                  ),
                  // onCompleted: (),
                ),
              ),
              25.verticalSpace,
              Custombutton(
                buttonText: "CONTINUE",
                onPressed: () {
                  controller.goToConfirmPassword();
                },
              ),
              70.verticalSpace,
              // !controller.otptimercompleted
              //     ? CircularPercentIndicator(
              //         radius: 90.w,
              //         lineWidth: 12,
              //         percent: controller.otptimercompleted
              //             ? 1.0
              //             : controller.otpcurrent / controller.otpstart,
              //         center: Text(
              //           controller.otptimercompleted
              //               ? 'Timer Completed'
              //               : '${controller.otpcurrent} s',
              //           style: const TextStyle(
              //             fontSize: 24.0,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //         progressColor: const Color(0xff000000))
              //     : GestureDetector(
              //         onTap: () {
              //           controller.resendCode();
              //         },
              //         child: RichText(
              //             text: const TextSpan(
              //           style: TextStyle(
              //             fontSize: 14.0,
              //             color: Colors.black,
              //           ),
              //           children: <TextSpan>[
              //             TextSpan(text: "Code Didn't Receive? "),
              //             TextSpan(
              //                 text: 'Resend',
              //                 style: TextStyle(
              //                     fontWeight: FontWeight.bold,
              //                     color: Color(0xff388E3C))),
              //           ],
              //         )),
              //       ),
            ],
          ),
        ));
  }
}
