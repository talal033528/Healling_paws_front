import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/customt_textfiled.dart';
import 'package:provider/provider.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();

    return Scaffold(
        backgroundColor: Color(0xffF4F6FA),
        appBar: AppBar(
          backgroundColor: Color(0xffF4F6FA),
          leading: Container(
              margin: EdgeInsets.only(left: 20),
              width: 45.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              )),
        ),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                70.verticalSpace,
                SvgPicture.asset(
                  "assets/icons/getstart.svg",
                ),
                80.verticalSpace,
                const Text(
                  "Enter Your New Password",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                50.verticalSpace,
                SizedBox(
                  width: 382.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "New Password",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.normal),
                      ),
                      10.verticalSpace,
                      const CustomTextField(
                        hintText: "Enter your password",
                        prefixIconPath: "assets/icons/input-password.svg",
                      ),
                    ],
                  ),
                ),
                20.verticalSpace,
                SizedBox(
                  width: 382.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Confirm New Password",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.normal),
                      ),
                      10.verticalSpace,
                      const CustomTextField(
                        hintText: "Enter your password",
                        prefixIconPath: "assets/icons/input-password.svg",
                        suffixIconPath: "assets/icons/input-eye.svg",
                      ),
                    ],
                  ),
                ),
                25.verticalSpace,
                Custombutton(
                  buttonText: "RESET",
                  onPressed: () {
                    controller.goToLogin();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
