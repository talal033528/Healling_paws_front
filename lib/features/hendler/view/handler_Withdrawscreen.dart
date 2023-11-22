import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:provider/provider.dart';

class Withdraw extends StatelessWidget {
  const Withdraw({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
    final bottomController = context.watch<hendlerNavigationViewModel>();
    return Scaffold(
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
          "Withdraw",
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xff223850)),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Custombutton(
          buttonText: "Confirm",
          onPressed: () {
            showDialog(
              context: context, // Ensure that you have access to the context
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Transfer Successful!",
                              style: TextStyle(
                                  fontSize: 30.sp,
                                  color: Color(0xff0000000),
                                  fontWeight: FontWeight.w900),
                            ),
                            10.verticalSpace,
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: 'You have successfully transferred',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Color(0xff48576E),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                text: '\$400 in your account',
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
                                bottomController.changeBottomIndex(0);
                                controller.goTohendler_main();
                              },
                              child: Container(
                                width: 130.w,
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
                                        color:
                                            Color(0xFF9C9C9C), // Shadow color
                                        blurRadius: 4.0,
                                        spreadRadius: 0.1,
                                        offset: Offset(0, 2.0),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(100),
                                    border:
                                        Border.all(color: Color(0xffDDE2E8))),
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
                        )));
              },
            );
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            20.verticalSpace,
            Container(
              width: 390.w,
              height: 100.h,
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
                  border: Border.all(color: Color(0xffDDE2E8)),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset("assets/images/YourBalance.png"),
                  title: Text(
                    "Your Balance",
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000).withOpacity(0.6)),
                  ),
                  subtitle: Text(
                    "\$15,658.36",
                    style: TextStyle(
                        fontSize: 24.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ),
            20.verticalSpace,
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
                border: Border.all(color: Color(0xffDDE2E8)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                leading: SizedBox(
                  width: 30.w,
                  child: Image.asset(
                    "assets/images/banglogo.png", // Corrected line
                    width: 26.w,
                    height: 26.h,
                  ),
                ),
                title: Text(
                  "Bank of America",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "3439589864",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff000000).withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            16.verticalSpace,
            SizedBox(
              width: 380.w,
              child: Text(
                "Enter the amount of transfer",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Color(0xff0000000),
                    fontWeight: FontWeight.w900),
              ),
            ),
            16.verticalSpace,
            Container(
              width: 390.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(26.r),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF9C9C9C),
                    blurRadius: 4.0,
                    spreadRadius: 0.1,
                    offset: Offset(0, 2.0),
                  ),
                ],
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: const Color(0xff000000),
                  fontSize: 25.sp,
                  fontWeight: FontWeight.normal,
                ),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  hintText: "400",
                  // textAlign: TextAlign.center,
                  hintStyle: TextStyle(
                    color: const Color(0xff000000),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.normal,
                  ),
                  filled: true,
                  prefix: Text(
                    "\$",
                    style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w900,
                      color: Color(0xffABB8D6),
                    ),
                  ),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26.r),
                    borderSide: BorderSide(width: 1, color: Color(0xff9C9C9C)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26.r),
                    borderSide: BorderSide(width: 1, color: Color(0xff9C9C9C)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(26.r),
                    borderSide: BorderSide(width: 1, color: Color(0xff9C9C9C)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
