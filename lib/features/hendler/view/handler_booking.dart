import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/widgets/calenderseach.dart';
import 'package:healing_paws/features/hendler/widgets/customcard.dart';
import 'package:provider/provider.dart';

class hendler_booking extends StatefulWidget {
  const hendler_booking({super.key});

  @override
  State<hendler_booking> createState() => _hendler_bookingState();
}

class _hendler_bookingState extends State<hendler_booking>
    with TickerProviderStateMixin {
  late TabController _controller;

  late TabController tabController;
  bool changecolor = false;
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);

    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        setState(() {
          changecolor = !changecolor;
        });
      }
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final GlobalKey<ScaffoldState> _key = GlobalKey();
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
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: AppBar(
            toolbarHeight: 120.h,
          ).preferredSize,
          child: AppBar(
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
            title: Text(
              "Bookings",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xff0000000),
                  fontWeight: FontWeight.w700),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    controller.goToNotifications();
                  },
                  child: SvgPicture.asset(
                    "assets/icons/notification1.svg",
                  ),
                ),
              ),
            ],
            bottom: TabBar(
              controller: tabController,
              dividerColor: Colors.transparent,
              indicator: null,
              indicatorColor: Colors.transparent,
              // unselectedLabelColor: Color(0xff223850),
              // labelColor: Color(0xff48576E),
              tabs: [
                Container(
                  width: 186.w,
                  decoration: BoxDecoration(
                    // border: Border.all(
                    //   color: Color(0xffC49FAE),
                    // ),
                    borderRadius: BorderRadius.circular(26),
                    color: changecolor ? Color(0xff29B6F6) : Color(0xff223850),
                  ),
                  child: Tab(
                    child: Text(
                      "New Bookings",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Container(
                  width: 186.w,
                  decoration: BoxDecoration(
                    // border: Border.all(
                    //   color: Color(0xffC49FAE),
                    // ),
                    borderRadius: BorderRadius.circular(26),
                    color: changecolor ? Color(0xff223850) : Color(0xff29B6F6),
                  ),
                  child: Tab(
                    child: Text(
                      "Bookings History",
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        width: 390.w,
                        height: 1000,
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            SizedBox(
                              width: 390.w,
                              child: ListView.builder(
                                  itemCount: 4,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      child: GestureDetector(
                                        onTap: () {
                                          // controller.goT0BookingDetails();
                                        },
                                        child: SizedBox(
                                          width: 390.w,
                                          child: GestureDetector(
                                            onTap: () {
                                              controller
                                                  .goTohandler_MarkasCompleted();
                                            },
                                            child: CustomContainer(
                                              name: "Sara William",
                                              text: "Today",
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                            Column(
                              children: [
                                20.verticalSpace,
                                SizedBox(
                                    width: 390.w,
                                    child: CalendarTextField(
                                      hinttext: "September 25, 1996",
                                    )),
                                20.verticalSpace,
                                GestureDetector(
                                  onTap: () {
                                    // controller.goToRescheduleanAppointment();
                                  },
                                  child: GestureDetector(
                                    onTap: () {
                                      controller.goTohandler_jobcomplete();
                                    },
                                    child: CustomContainer(
                                      name: "Sara William",
                                      text: "Today",
                                    ),
                                  ),
                                ),
                                20.verticalSpace,
                                GestureDetector(
                                  onTap: () {
                                    // controller.goToRescheduleanAppointment();
                                  },
                                  child: CustomContainer(
                                    name: "Sara William",
                                    text: "Today",
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
