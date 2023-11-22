import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/customt_textfiled.dart';
import 'package:healing_paws/features/getstarted/widgets/textfied.dart';
import 'package:provider/provider.dart';

class loginwithemail extends StatefulWidget {
  const loginwithemail({super.key});

  @override
  State<loginwithemail> createState() => _loginwithemailState();
}

class _loginwithemailState extends State<loginwithemail> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();

    return Scaffold(
        backgroundColor: Color(0xffF4F6FA),
        appBar: AppBar(
          title: Text(
            "Sign In",
            style: TextStyle(fontSize: 16.sp, color: Color(0xff223850)),
          ),
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
              SvgPicture.asset(
                "assets/icons/getstart.svg",
                width: 269.71,
                height: 120,
              ),
              50.verticalSpace,
              // SizedBox(
              //   width: ,
              //   child: CustomTextFieldWithLabel(
              //     hintText: 'sara.william@domain.com',
              //     labelText: 'Email Address',
              //     iconChange: Icons.abc,
              //     colorChange: Colors.transparent,
              //   ),
              // ),
              SizedBox(
                width: 390.w,
                child: AuthTextField(
                  labeltext: 'Email Address',
                  hinttext: 'sara.william@domain.com',
                  suffixImagePath: '', // Provide the image path
                  showsuffixicon: false,
                  controller:
                      TextEditingController(), // You can provide your TextEditingController
                  obsecure:
                      false, // Set this to true if you want to obscure the text (e.g., for passwords)
                ),
              ),
              25.verticalSpace,

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
