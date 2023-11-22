import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:provider/provider.dart';

class SelectPaymentMethod extends StatelessWidget {
  const SelectPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<UserNavigationViewModel>();
    final bottomController = context.watch<hendlerNavigationViewModel>();
    bool ontabchange = true;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "Select Payment Method",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            22.verticalSpace,
            SizedBox(
              width: 390.w,
              child: Text(
                "Select Card",
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Color(0xff223850),
                    fontWeight: FontWeight.w900),
              ),
            ),
            22.verticalSpace,
            const PaymentMethodWidget(
              title: "My Wallet",
              image: 'assets/images/MyWallet.png',
            ),
            15.verticalSpace,
            const PaymentMethodWidget(
              title: "Apple Pay",
              image: 'assets/images/ApplePay.png',
            ),
            15.verticalSpace,
            const PaymentMethodWidget(
              title: "Google Pay",
              image: 'assets/images/Google Pay.png',
            ),
            15.verticalSpace,
            const PaymentMethodWidget(
              title: "Paypal",
              image: 'assets/images/Paypal.png',
            ),
            15.verticalSpace,
            const PaymentMethodWidget(
              title: "**** **** 4569",
              image: 'assets/images/Group 2116.png',
            ),
            22.verticalSpace,
            SizedBox(
              width: 390.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.goToAddCard();
                    },
                    child: SizedBox(
                      width: 100.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/add.png",
                            width: 19.w,
                            height: 19.h,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Color(0xff48576E),
                                fontWeight: FontWeight.w900),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                          SizedBox(
                            width: 350.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    controller.goTouser_main();
                                    bottomController.changeBottomIndex(0);
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
                                            color: Color(
                                                0xFF9C9C9C), // Shadow color
                                            blurRadius: 4.0,
                                            spreadRadius: 0.1,
                                            offset: Offset(0, 2.0),
                                          ),
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: Color(0xffDDE2E8))),
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
                                GestureDetector(
                                  onTap: () {
                                    controller.goTouser_main();
                                    bottomController.changeBottomIndex(2);
                                  },
                                  child: Container(
                                    width: 130.w,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(
                                                0xFF9C9C9C), // Shadow color
                                            blurRadius: 4.0,
                                            spreadRadius: 0.1,
                                            offset: Offset(0, 2.0),
                                          ),
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: Color(0xffDDE2E8))),
                                    child: Center(
                                      child: Text(
                                        "Booking Details",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
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
    );
  }
}

class PaymentMethodWidget extends StatefulWidget {
  final String title;
  final String image;

  const PaymentMethodWidget({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  _PaymentMethodWidgetState createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            widget.image, // Corrected line
            width: 26.w,
            height: 26.h,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 150.w,
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              width: 50.w,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: isSelected
                    ? Icon(Icons.radio_button_checked)
                    : Icon(Icons.radio_button_unchecked),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
