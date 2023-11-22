import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:provider/provider.dart';

class hendler_menu extends StatelessWidget {
  const hendler_menu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
    final bottomController = context.watch<hendlerNavigationViewModel>();

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/manubg.png",
              ))),
      child: Drawer(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(26.r),
              bottomRight: Radius.circular(26.r)),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              30.verticalSpace,
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 390.w,
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/service_logo.png",
                  ),
                  title: Text(
                    "ABC Paws Service",
                    style: TextStyle(
                        color: const Color(0xffFFFFFF),
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "john.willian@gmail.com",
                    style: TextStyle(
                        color: const Color(0xff9C9C9C),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              15.verticalSpace,
              ListTile(
                leading: SvgPicture.asset(
                  "assets/icons/sidemenu_profile1.svg",
                  width: 24.w,
                  height: 24.h,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xffffffff),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  bottomController.changeBottomIndex(3);
                  controller.goTohendler_ManageProfile();
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DottedLine(
                    dashLength: 1,
                    dashGapLength: 1,
                    lineThickness: 1,
                    dashColor: Colors.white,
                    direction: Axis.horizontal,
                    lineLength: 216,
                  ),
                ],
              ),
              15.verticalSpace,
              ListTile(
                leading: SvgPicture.asset(
                  "assets/icons/My Earning.svg",
                  width: 24.w,
                  height: 24.h,
                ),
                title: Text(
                  'My Earning',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffffffff)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  bottomController.changeBottomIndex(1);
                  controller.goToMyEarning();
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DottedLine(
                    dashLength: 1,
                    dashGapLength: 1,
                    lineThickness: 1,
                    dashColor: Colors.white,
                    direction: Axis.horizontal,
                    lineLength: 216,
                  ),
                ],
              ),
              15.verticalSpace,
              ListTile(
                leading: SvgPicture.asset(
                  "assets/icons/My Wallet.svg",
                  width: 24.w,
                  height: 24.h,
                ),
                title: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    controller.goTohendler_mywallet();
                  },
                  child: Text(
                    'My Wallet',
                    style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffffffff)),
                  ),
                ),
                onTap: () {},
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DottedLine(
                    dashLength: 1,
                    dashGapLength: 1,
                    lineThickness: 1,
                    dashColor: Colors.white,
                    direction: Axis.horizontal,
                    lineLength: 216,
                  ),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DottedLine(
                    dashLength: 1,
                    dashGapLength: 1,
                    lineThickness: 1,
                    dashColor: Colors.white,
                    direction: Axis.horizontal,
                    lineLength: 216,
                  ),
                ],
              ),
              15.verticalSpace,
              ListTile(
                leading: SvgPicture.asset(
                  "assets/icons/Notifications.svg",
                  width: 24.w,
                  height: 24.h,
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffffffff)),
                ),
                onTap: () {
                  // controller.goToNotifications();
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DottedLine(
                    dashLength: 1,
                    dashGapLength: 1,
                    lineThickness: 1,
                    dashColor: Colors.white,
                    direction: Axis.horizontal,
                    lineLength: 216,
                  ),
                ],
              ),
              15.verticalSpace,
              ListTile(
                leading: SvgPicture.asset(
                  "assets/icons/Settings.svg",
                  width: 24.w,
                  height: 24.h,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffffffff)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  controller.goTocsettingscreen();
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DottedLine(
                    dashLength: 1,
                    dashGapLength: 1,
                    lineThickness: 1,
                    dashColor: Colors.white,
                    direction: Axis.horizontal,
                    lineLength: 216,
                  ),
                ],
              ),
              15.verticalSpace,
              ListTile(
                leading: SvgPicture.asset(
                  "assets/icons/Help & Feedback.svg",
                  width: 24.w,
                  height: 24.h,
                ),
                title: Text(
                  'Help & Feedback',
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xffffffff)),
                ),
                onTap: () {
                  Navigator.pop(context);
                  controller.goToHelpFeedback();
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DottedLine(
                    dashLength: 1,
                    dashGapLength: 1,
                    lineThickness: 1,
                    dashColor: Colors.white,
                    direction: Axis.horizontal,
                    lineLength: 216,
                  ),
                ],
              ),
              100.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Show the dialog when the "Logout" button is pressed
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text(
                              'Logout',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF03384C),
                                fontSize: 20,
                                fontFamily: 'Typold',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            content: const Opacity(
                              opacity: 0.50,
                              child: Text(
                                'Are you sure you want to \nlogout?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF03384C),
                                  fontSize: 16,
                                  fontFamily: 'Typold',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                            ),
                            actions: <Widget>[
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 40,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          side: const BorderSide(
                                              width: 1,
                                              color: Color(0x7F03384C)),
                                          borderRadius:
                                              BorderRadius.circular(58),
                                        ),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        'Cancel',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF03384C),
                                          fontSize: 14,
                                          fontFamily: 'Typold',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      )),
                                    ),
                                  ),
                                  5.horizontalSpace,
                                  GestureDetector(
                                    onTap: () {
                                      bottomController.changeBottomIndex(0);
                                      controller.goToSelectionScreen();
                                    },
                                    child: Container(
                                      width: 130,
                                      height: 40,
                                      decoration: ShapeDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment(1.00, -0.03),
                                          end: Alignment(-1, 0.03),
                                          colors: [
                                            Color(0xFF29B6F6),
                                            Color(0xff007AB1),
                                            Color(0xff007AB1),
                                          ],
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(26),
                                        ),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        'Logout',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Typold',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      )),
                                    ),
                                  )
                                ],
                              )
                            ],
                          );
                        },
                      );
                    },
                    child: Container(
                      width: 216.w,
                      height: 52.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 0.3),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(26.r),
                          topRight: Radius.circular(26.r),
                        ),
                        gradient: const LinearGradient(
                          begin: Alignment(1.00, -0.03),
                          end: Alignment(-1, 0.03),
                          colors: [
                            Color(0xFF29B6F6),
                            Color(0xff007AB1),
                            Color(0xff007AB1),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.exit_to_app,
                                color: Colors.white,
                              ),
                              SizedBox(
                                  width:
                                      5), // Add spacing between icon and text
                              Text(
                                'Logout',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: 'Typold',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
