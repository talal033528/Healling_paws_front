import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/getstarted/widgets/textfied.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:provider/provider.dart';

class handler_addbank extends StatelessWidget {
  const handler_addbank({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
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
          "Add New Bank",
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
            30.verticalSpace,
            SizedBox(
              width: 390.w,
              child: MyDropdownWidget(
                options: const ["Select Bank", "Bank of America"],
                selectedValue: "Select Bank",
                onChanged: (value) {},
              ),
            ),
            16.verticalSpace,
            SizedBox(
              width: 390.w,
              child: AuthTextField(
                labeltext: 'Account Number',
                hinttext: '3439589864',
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
                labeltext: 'ERouting Number',
                hinttext: '3439589864',
                suffixImagePath: '', // Provide the image path
                showsuffixicon: false,
                controller:
                    TextEditingController(), // You can provide your TextEditingController
                obsecure:
                    false, // Set this to true if you want to obscure the text (e.g., for passwords)
              ),
            ),
            40.verticalSpace,
            SizedBox(
              width: 390.w,
              child: Custombutton(
                buttonText: "Add Now",
                onPressed: () {
                  controller.goTohandler_salectbank();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
