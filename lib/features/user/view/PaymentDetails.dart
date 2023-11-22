import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/view/user_myprofile.dart';
import 'package:provider/provider.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<UserNavigationViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "Payment Details",
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
            Container(
              width: 390.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffDDE2E8)),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  20.verticalSpace,
                  myprofiledetailscard("Charges", "\$30.00 / hr"),
                  10.verticalSpace,
                  myprofiledetailscard("Total Time", "03 hrs"),
                  10.verticalSpace,
                  myprofiledetailscard("Amount", "\$90.00"),
                  10.verticalSpace,
                  myprofiledetailscard("Tax", "\$10.00"),
                  10.verticalSpace,
                  myprofiledetailscard("Sub Total", "\$100.00"),
                  22.verticalSpace,
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
            buttonText: "Pay Now",
            onPressed: () {
              controller.goToSelectPaymentMethod();
            },
          ),
        ),
      ),
    );
  }
}
