import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';

import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/handler_addpet.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:provider/provider.dart';

class CreateBusinessProfile extends StatelessWidget {
  const CreateBusinessProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();
    final bottomController = context.watch<hendlerNavigationViewModel>();
    return Scaffold(
      backgroundColor: Color(0xffF4F6FA),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Custombutton(
            buttonText: "Continue",
            onPressed: () {
              // controller.goTohendler_main();
              controller.goToHomePage();
              // bottomController.changeBottomIndex(0);
            }),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F6FA),
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Add Pet",
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff223850)),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            47.verticalSpace,
            GestureDetector(
              onTap: () {
                controller.goToadddogdatails();
              },
              child: SizedBox(
                width: 390.w,
                child: handler_addpet(
                  text: 'Dog Name Abc',
                  image: 'assets/images/dog1.png',
                ),
              ),
            ),
            16.verticalSpace,
            GestureDetector(
              onTap: () {
                controller.goToadddogdatails();
              },
              child: SizedBox(
                width: 390.w,
                child: handler_addpet(
                  text: 'Cat Name Abc',
                  image: 'assets/images/cat.png',
                ),
              ),
            ),
            15.verticalSpace,
            GestureDetector(
              onTap: () {
                controller.goToadddogdatails();
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
                            "Add Filed",
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
