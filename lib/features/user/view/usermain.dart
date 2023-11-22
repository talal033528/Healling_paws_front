import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/user/view/side_menu.dart';
import 'package:healing_paws/features/user/view/user_Bookings.dart';
import 'package:healing_paws/features/user/view/user_Discover.dart';
import 'package:healing_paws/features/user/view/user_chat.dart';
import 'package:healing_paws/features/user/view/user_home.dart';
import 'package:provider/provider.dart';

class user_main extends StatelessWidget {
  const user_main({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomController = context.watch<hendlerNavigationViewModel>();

    final List<Widget> pages = [
      const user_home(),
      const Discover(),
      const user_Bookings(),
      const user_chat(),
    ];
    return Container(
      color: Colors.transparent,
      child: Scaffold(
        drawer: const user_menu(),
        // extendBody: true,
        // extendBodyBehindAppBar: true,

        bottomNavigationBar: Container(
          color: Colors.transparent,
          // decoration: BoxDecoration(
          //   gradient: const LinearGradient(
          //     begin: Alignment.centerLeft,
          //     end: Alignment.centerRight,
          //     colors: [Color(0xff007AB1), Color(0xff29B6F6)],
          //   ),
          // ),
          margin: EdgeInsets.only(bottom: 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                currentIndex: bottomController.bottomIndex,
                showUnselectedLabels: false,
                selectedLabelStyle: const TextStyle(color: Colors.white),
                // selectedItemColor: Colors.yellow,
                unselectedItemColor: const Color(0xffB9B9B9),
                unselectedLabelStyle: TextStyle(color: const Color(0xffB9B9B9)),
                onTap: (index) {
                  bottomController.changeBottomIndex(index);
                },
                // type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                    backgroundColor: Color(0xff32567D),
                    icon: Center(
                      child: Image.asset('assets/images/home.png',
                          width: 24.w, // Adjust the width as needed
                          height: 24
                              .h, // / Adjust the height as needed// Adjust the height as needed
                          color: bottomController.bottomIndex == 0
                              ? Colors.white
                              : Color(0xff29B6F6)),
                    ),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Color(0xff32567D),
                    icon: Image.asset('assets/images/Discover.png',
                        width: 24.w, // Adjust the width as needed
                        height: 24
                            .h, // Adjust the height as needed Adjust the height as needed
                        color: bottomController.bottomIndex == 1
                            ? Colors.white
                            : Color(0xff29B6F6)),
                    label: 'Discover',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Color(0xff32567D),
                    icon: Image.asset('assets/images/Bookings.png',
                        width: 25.w, // Adjust the width as needed
                        height: 25.h, //  Adjust the height as needed
                        color: bottomController.bottomIndex == 2
                            ? Colors.white
                            : Color(0xff29B6F6)),
                    label: 'Bookings',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Color(0xff32567D),
                    icon: Image.asset('assets/images/chat.png',
                        width: 24, // Adjust the width as needed
                        height:
                            24, // Adjust the height as needed// Adjust the height as needed
                        color: bottomController.bottomIndex == 3
                            ? Colors.white
                            : Color(0xff29B6F6)),
                    label: 'chat',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: pages[bottomController.bottomIndex],
      ),
    );
  }
}

Widget gogdetailcard() {
  return Container(
    width: 157.w,
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
        border: Border.all(color: Color(0xffA7C4D1)),
        borderRadius: BorderRadius.circular(10)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/imgPath.png",
          width: 157.w,
          // height: 112.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ABC Paws Service",
                style: TextStyle(
                    fontSize: 14.sp,
                    color: Color(0xff223850),
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "10 Pets",
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xff48576E).withOpacity(0.4),
                    fontWeight: FontWeight.w700),
              ),
              5.verticalSpace,
              SizedBox(
                width: 150.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 65.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/locationmark.png",
                              width: 8,
                            ),
                            Text(
                              "1.6 miles",
                              style: TextStyle(
                                  fontSize: 12.sp,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        )),
                    SizedBox(
                      width: 35.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/star3.png",
                            width: 12.w,
                            height: 11.h,
                          ),
                          Text(
                            "4.5",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}
