import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/view/handlermain.dart';
import 'package:healing_paws/features/hendler/view/side_menu.dart';
import 'package:healing_paws/features/hendler/widgets/customcard.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class handler_home extends StatefulWidget {
  const handler_home({super.key});

  @override
  State<handler_home> createState() => _handler_homeState();
}

class _handler_homeState extends State<handler_home> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    final controller = context.watch<hendlerNavigationViewModel>();
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
      child: Scaffold(
          key: scaffoldKey,
          drawer: hendler_menu(),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            // automaticallyImplyLeading: false,
            centerTitle: true,
            leading: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isDrawerOpen
                    ? IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          setState(() {
                            xOffset = 0;
                            yOffset = 0;
                            scaleFactor = 1;
                            isDrawerOpen = false;
                          });
                        },
                      )
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() {
                            xOffset = 230;
                            yOffset = 150;
                            scaleFactor = 0.6;
                            isDrawerOpen = true;
                          });
                        }),
              ],
            ),

            //  GestureDetector(
            //   onTap: () {
            //     print("ss");
            //     // scaffoldKey.currentState?.openDrawer();
            //     Scaffold.of(context).openDrawer();
            //   },
            //   child: const Icon(Icons.menu, color: Colors.black),
            // ),
            title: Image.asset(
              "assets/images/title.png",
              width: 152.w,
              height: 22.h,
            ),
            // actions: [
            //   GestureDetector(
            //     onTap: controller.goToNotifications(),
            //     child: Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: SvgPicture.asset(
            //         "assets/icons/notification1.svg",
            //       ),
            //     ),
            //   ),
            // ],
          ),
          body: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: 390.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ABC Paws Service",
                          style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff223850)),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.goTohendler_ManageProfile();
                          },
                          child: Image.asset(
                            "assets/images/service_logo.png",
                            width: 60.w,
                            height: 60.h,
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    ),
                  ),
                  // ListTile(
                  //   title: Text(
                  //     "Welcome to",
                  //     style: TextStyle(
                  //         fontSize: 30.sp,
                  //         fontWeight: FontWeight.bold,
                  //         color: Color(0xff223850)),
                  //   ),
                  //   subtitle: Text(
                  //     "ABC Paws Service",
                  //     style: TextStyle(
                  //         fontSize: 20.sp,
                  //         fontWeight: FontWeight.bold,
                  //         color: Color(0xff223850).withOpacity(0.45)),
                  //   ),
                  //   trailing: Image.asset(
                  //     "assets/images/service_logo.png",
                  //     width: 60.w,
                  //     height: 60.h,
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                  10.verticalSpace,
                  Container(
                    width: 390.w,
                    height: 1.h,
                    color: Color(0xffDDE2E8),
                  ),
                  10.verticalSpace,
                  SizedBox(
                    width: 390.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Bookings',
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF007AB1),
                                fontWeight: FontWeight.w900),
                            children: <TextSpan>[
                              TextSpan(
                                text: '  ',
                              ),
                              TextSpan(
                                text: '(4 New)',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff223850),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff223850),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  20.verticalSpace,
                  GestureDetector(
                    onTap: () {
                      controller.goTohendler_viewdetails();
                    },
                    child: CustomContainer(
                      name: "Sara William",
                      text: "Today",
                    ),
                  ),
                  12.verticalSpace,
                  CustomContainer(
                    name: "Sara William",
                    text: "Today",
                  ),
                  20.verticalSpace,
                  SizedBox(
                    width: 390.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'Upcoming Sessions',
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Color(0XFF007AB1),
                                fontWeight: FontWeight.w900),
                            children: <TextSpan>[
                              TextSpan(
                                text: '  ',
                              ),
                              TextSpan(
                                text: '(This Week)',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Color(0xff223850),
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "View All",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff223850),
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  20.verticalSpace,
                  SizedBox(
                    width: 390.w,
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: CustomContainer(
                              name: "Sara William",
                              text: "Today",
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
