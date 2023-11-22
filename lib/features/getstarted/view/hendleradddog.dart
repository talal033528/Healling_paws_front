import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/textfied.dart';
import 'package:provider/provider.dart';

class hendleradddog extends StatelessWidget {
  const hendleradddog({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();
    return Scaffold(
      backgroundColor: Color(0xffF4F6FA),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F6FA),
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Add Dog Details",
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xff223850)),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Custombutton(
            buttonText: "Continue",
            onPressed: () {
              controller.goTohendler_main();
            }),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              width: 390.w,
              child: AuthTextField(
                labeltext: 'Business Name',
                hinttext: 'ABC Paws Service',
                suffixImagePath: '', // Provide the image path
                showsuffixicon: false,
                controller:
                    TextEditingController(), // You can provide your TextEditingController
                obsecure:
                    false, // Set this to true if you want to obscure the text (e.g., for passwords)
              ),
            ),
            15.verticalSpace,
            DottedBorder(
              color: Colors.black,
              // gap: 3,
              strokeWidth: 1,
              child: Container(
                width: 390.w, // Set the width as needed
                height: 173.h, // Set the height as needed

                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/add1.svg",
                        width: 19.w,
                        height: 19.h,
                      ),
                      10.verticalSpace,
                      Text(
                        "Add Certificate",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff007AB1),
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ), // Container background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
