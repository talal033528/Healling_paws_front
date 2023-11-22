import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/getstarted/view/hendleradddogdatails.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/textfied.dart';
import 'package:healing_paws/features/setting/settingviewmodel/viewmodel.dart';
import 'package:provider/provider.dart';

class HelpFeedback extends StatelessWidget {
  const HelpFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<SettingViewModel>();
    return Scaffold(
      backgroundColor: Color(0xffF4F6FA),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SizedBox(
          width: 348.w,
          child: Custombutton(
            buttonText: "Confirm",
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    backgroundColor: Colors.white,
                    title: Image.asset(
                      "assets/images/ThankYou.png",
                      width: 104.w,
                      height: 104.h,
                    ),
                    content: Container(
                      width: 390.w,
                      height: 200.h,
                      child: Column(
                        children: [
                          Text(
                            "Thank You!",
                            style: TextStyle(
                                fontSize: 30.sp,
                                color: Color(0xff0000000),
                                fontWeight: FontWeight.w900),
                          ),
                          10.verticalSpace,
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Your booking has been confirmed',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Color(0xff48576E),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          30.verticalSpace,
                          GestureDetector(
                            onTap: () {
                              // controller.goTouser_main();
                              // bottomController.changeBottomIndex(0);
                            },
                            child: Container(
                              width: 140.w,
                              height: 35,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xff007AB1),
                                      Color(0xff007AB1),
                                      Color(0xff29B6F6)
                                    ],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFF9C9C9C), // Shadow color
                                      blurRadius: 4.0,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 2.0),
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(color: Color(0xffDDE2E8))),
                              child: Center(
                                child: Text(
                                  "Back to Home",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Color(0xffffffff),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
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
          "Help & Feedback",
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xff223850)),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            10.verticalSpace,
            SizedBox(
              width: 390.w,
              child: AuthTextField(
                labeltext: 'Dog Name',
                hinttext: 'Lorem ipsum',
                suffixImagePath: '', // Provide the image path
                showsuffixicon: false,
                controller:
                    TextEditingController(), // You can provide your TextEditingController
                obsecure:
                    false, // Set this to true if you want to obscure the text (e.g., for passwords)
              ),
            ),
            10.verticalSpace,
            Container(
              width: 390.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF9C9C9C), // Shadow color
                    blurRadius: 4.0,
                    spreadRadius: 0.1,
                    offset: Offset(0, 2.0),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xffDBE2EC)),
              ),
              child: Padding(
                padding: EdgeInsets.all(10), // Add padding as needed
                child: TextFormField(
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText: 'Description', // Add your hint text here
                    border: InputBorder.none, // Remove the default input border
                  ),
                ),
              ),
            ),
            30.verticalSpace,
            SizedBox(
              width: 390.w,
              child: Text(
                "Add Images",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff223850),
                    fontWeight: FontWeight.w800),
              ),
            ),
            10.verticalSpace,
            SizedBox(
              width: 390.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  imagecard(),
                  imagecard(),
                  DottedBorder(
                    strokeWidth: 1,
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15)),
                        width: 122.w,
                        height: 121.h,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/add.svg",
                                width: 19.w,
                                height: 19.h,
                              ),
                              5.verticalSpace,
                              Text(
                                "Add More",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xff007AB1),
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
