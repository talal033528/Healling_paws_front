import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/view/handler_chat.dart';
import 'package:healing_paws/features/hendler/view/handler_Analytics.dart';
import 'package:healing_paws/features/hendler/view/handler_booking.dart';
import 'package:healing_paws/features/hendler/view/handler_home.dart';
import 'package:healing_paws/features/hendler/view/side_menu.dart';
import 'package:provider/provider.dart';

class hendler_main extends StatelessWidget {
  const hendler_main({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomController = context.watch<hendlerNavigationViewModel>();

    final List<Widget> pages = [
      const handler_home(),
      const hendler_booking(),
      const hendler_Analytics(),
      const hendler_chat(),
    ];
    return Container(
      color: Colors.transparent,
      child: Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: BottomNavigationBar(
                // backgroundColor: Color(0xffFAB010),
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
                    icon: Image.asset('assets/images/booking.png',
                        width: 24.w, // Adjust the width as needed
                        height: 24
                            .h, // Adjust the height as needed Adjust the height as needed
                        color: bottomController.bottomIndex == 1
                            ? Colors.white
                            : Color(0xff29B6F6)),
                    label: 'Bookings',
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: Color(0xff32567D),
                    icon: Image.asset('assets/images/analytics.png',
                        width: 25.w, // Adjust the width as needed
                        height: 25.h, //  Adjust the height as needed
                        color: bottomController.bottomIndex == 2
                            ? Colors.white
                            : Color(0xff29B6F6)),
                    label: 'Analytics',
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
