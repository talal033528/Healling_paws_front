import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/setting/settingviewmodel/viewmodel.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:provider/provider.dart';

class settingscreen extends StatelessWidget {
  const settingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<SettingViewModel>();
    final bottomController = context.watch<UserNavigationViewModel>();
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          centerTitle: true,
          leading: Container(
              margin: EdgeInsets.only(left: 20),
              width: 45.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                    bottomController.changeBottomIndex(0);
                  },
                ),
              )),
          title: Text(
            "Settings",
            style: TextStyle(
                color: Color(0xff223850),
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              20.verticalSpace,
              Container(
                width: 390.w,
                height: 55.h,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9C9C9C), // Shadow color
                      blurRadius: 4.0,
                      spreadRadius: 0.1,
                      offset: Offset(0, 2.0),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color(0xffF4F6FA)),
                  color: Color(0xffffffff),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                                "assets/icons/PushNotifications.svg"),
                            15.horizontalSpace,
                            Text(
                              "Push Notifications",
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        SvgPicture.asset("assets/icons/togal1.svg")
                      ],
                    ),
                  ),
                ),
              ),
              10.verticalSpace,
              GestureDetector(
                onTap: () {
                  controller.goToCardDetails();
                },
                child: SizedBox(
                  width: 390.w,
                  child: settingCard(
                      "assets/icons/Card Details.svg", "Card Details"),
                ),
              ),
              10.verticalSpace,
              GestureDetector(
                onTap: () {
                  controller.goToTermsConditions();
                },
                child: SizedBox(
                  width: 390.w,
                  child: settingCard("assets/icons/Terms & Conditions.svg",
                      "Terms & Conditions"),
                ),
              ),
              10.verticalSpace,
              GestureDetector(
                onTap: () {
                  controller.goToPrivacyPolicy();
                },
                child: SizedBox(
                  width: 390.w,
                  child: settingCard(
                      "assets/icons/Privacy Policy.svg", "Privacy Policy"),
                ),
              ),
              10.verticalSpace,
              GestureDetector(
                onTap: () {
                  controller.goToAboutApp();
                },
                child: SizedBox(
                  width: 390.w,
                  child: settingCard("assets/icons/About App.svg", "AboutApp"),
                ),
              ),
              10.verticalSpace,
              GestureDetector(
                onTap: () {
                  controller.goToRefundPolicy();
                },
                child: SizedBox(
                  width: 390.w,
                  child: settingCard(
                      "assets/icons/Refund Policy.svg", "Refund Policy"),
                ),
              ),
            ],
          ),
        ));
  }
}

Widget settingCard(String imagepath, String text) {
  // Capitalize the function name
  return Container(
    width: 390.0, // Assuming you are not using any custom responsive extensions
    height: 55.0, // Assuming you are not using any custom responsive extensions
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Color(0xFF9C9C9C), // Shadow color
          blurRadius: 4.0,
          spreadRadius: 0.1,
          offset: Offset(0, 2.0),
        ),
      ],
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color(0xffF4F6FA)),
      color: Color(0xffffffff),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                    imagepath), // Use SvgPicture.asset to load SVG images
                SizedBox(width: 15.0), // Use SizedBox for spacing
                Text(
                  text,
                  style: TextStyle(
                    fontSize: 16.0, // Use double values for font size
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
