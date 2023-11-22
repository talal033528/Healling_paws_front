import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
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
        backgroundColor: Color(0xffF4F6FA),
        appBar: AppBar(
          backgroundColor: Color(0xffF4F6FA),
          title: Text(
            "Verification",
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: !controller.otptimercompleted
              ? Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Color(0xffE1EEF7),
                        Color(0xffE1EEF7),
                      ])),
                  child: CircularPercentIndicator(
                    // fillColor: Color(0xffE1EEF7),
                    linearGradient: LinearGradient(colors: [
                      Color(0xffE1EEF7),
                      Color(0xff223850),
                      Color(0xff48576E),
                    ]),
                    radius: 70.w,
                    lineWidth: 8,
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
                          color: Color(0xff48576E)),
                    ),
                    // progressColor:LinearGradient(colors: [])
                  ),
                )
              : Container(
                  margin: EdgeInsets.only(left: 120),
                  child: GestureDetector(
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
                            text: "Don't receive the code? ",
                            style: TextStyle(
                                color: Color(0xff223850), fontSize: 11)),
                        TextSpan(
                            text: 'Resend',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff223850))),
                      ],
                    )),
                  ),
                ),
        ),
        body: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 1.1,
          child: SingleChildScrollView(
            child: Column(
              children: [
                50.verticalSpace,
                SvgPicture.asset(
                  "assets/icons/getstart.svg",
                  width: 269.71,
                  height: 100,
                ),
                50.verticalSpace,
                Container(
                  width: 300,
                  child: Text(
                    "We have sent you an email containing a 6-digit verification code. Please enter the code to verify your identity.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF48576E),
                    ),
                  ),
                ),
                15.verticalSpace,
                const Text(
                  "Enter Your OTP",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color(0xff48576E)),
                ),
                50.verticalSpace,
                SizedBox(
                  width: 382.w,
                  child: PinCodeTextField(
                    textStyle: TextStyle(color: Color(0xff48576E)),
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
                      activeColor: Color(0xff48576E),
                    ),
                    // onCompleted: (),
                  ),
                ),
                25.verticalSpace,
                Custombutton(
                  buttonText: "CONTINUE",
                  onPressed: () {
                    controller.goToUserTypeScreen();
                  },
                ),
                70.verticalSpace,
              ],
            ),
          ),
        ));
  }
}
