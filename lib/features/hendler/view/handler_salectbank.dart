import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/widgets/salectbankcard.dart';
import 'package:provider/provider.dart';

class handler_salectbank extends StatelessWidget {
  const handler_salectbank({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Custombutton(
          buttonText: "Confirm",
          onPressed: () {
            controller.goT0Withdraw();
          },
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
          "Select Bank",
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
            20.verticalSpace,
            SizedBox(
              width: 390.w,
              child: handler_salectbankcard(
                title: 'Bank of America',
                image: 'assets/images/banglogo.png',
                name: '3439589864',
              ),
            ),
            10.verticalSpace,
            SizedBox(
              width: 390.w,
              child: handler_salectbankcard(
                title: 'Wells Fargo',
                image: 'assets/images/banklogo2.png',
                name: '3439589864',
              ),
            ),
            10.verticalSpace,
            SizedBox(
              width: 390.w,
              child: handler_salectbankcard(
                title: 'Chase Bank',
                image: 'assets/images/banklogo3.png',
                name: '3439589864',
              ),
            ),
            15.verticalSpace,
            GestureDetector(
              onTap: () {
                controller.goToAddNewBank();
              },
              child: SizedBox(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/add.svg",
                            width: 19.w,
                            height: 19.h,
                          ),
                          Text(
                            "Add New",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Color(0xff48576E),
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
