import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/getstarted/widgets/textfied.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:provider/provider.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

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
          "Add Card",
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
            30.verticalSpace,
            SizedBox(
              width: 390.w,
              child: AuthTextField(
                labeltext: 'Card Holder',
                hinttext: 'Will Smith',
                suffixImagePath: '', // Provide the image path
                showsuffixicon: false,
                controller:
                    TextEditingController(), // You can provide your TextEditingController
                obsecure:
                    false, // Set this to true if you want to obscure the text (e.g., for passwords)
              ),
            ),
            16.verticalSpace,
            SizedBox(
              width: 390.w,
              child: AuthTextField(
                labeltext: 'Card Number',
                hinttext: '****** ****** ****** 123456',
                suffixImagePath: '', // Provide the image path
                showsuffixicon: false,
                controller:
                    TextEditingController(), // You can provide your TextEditingController
                obsecure:
                    false, // Set this to true if you want to obscure the text (e.g., for passwords)
              ),
            ),
            16.verticalSpace,
            SizedBox(
              width: 390.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 185.w,
                    child: AuthTextField(
                      labeltext: 'Expiry Date',
                      hinttext: '10 / 25',
                      suffixImagePath: '', // Provide the image path
                      showsuffixicon: false,
                      controller:
                          TextEditingController(), // You can provide your TextEditingController
                      obsecure:
                          false, // Set this to true if you want to obscure the text (e.g., for passwords)
                    ),
                  ),
                  SizedBox(
                      width: 185.w,
                      child: AuthTextField(
                        labeltext: 'CVV',
                        hinttext: '485',
                        suffixImagePath: '', // Provide the image path
                        showsuffixicon: false,
                        controller:
                            TextEditingController(), // You can provide your TextEditingController
                        obsecure:
                            false, // Set this to true if you want to obscure the text (e.g., for passwords)
                      )),
                ],
              ),
            ),
            40.verticalSpace,
            SizedBox(
              width: 390.w,
              child: Custombutton(
                buttonText: "Add Now",
                onPressed: () {
                  controller.goToSelectPaymentMethod();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
