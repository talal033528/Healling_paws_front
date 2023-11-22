import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/widgets/bookingcardwidget.dart';
import 'package:provider/provider.dart';

class user_Bookings extends StatefulWidget {
  const user_Bookings({super.key});

  @override
  State<user_Bookings> createState() => _user_BookingsState();
}

class _user_BookingsState extends State<user_Bookings>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool changecolor = false;

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
    final controller = context.watch<UserNavigationViewModel>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            print("ss");
            // scaffoldKey.currentState?.openDrawer();
            Scaffold.of(context).openDrawer();
          },
          child: const Icon(Icons.menu, color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Bookings",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w600),
        ),

        // Image.asset(
        //   "assets/images/title.png",
        //   width: 152.w,
        //   height: 22.h,
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                controller.goTonotification();
              },
              child: Image.asset(
                "assets/images/notificationbell.png",
                width: 21.w,
                height: 22.h,
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
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
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
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: GestureDetector(
                                onTap: () {
                                  controller.goT0BookingDetails();
                                },
                                child: SizedBox(
                                    width: 390.w, child: bookingcardwidget()),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      width: 390.w,
                      child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                              child: GestureDetector(
                                  onTap: () {
                                    controller.goToRescheduleanAppointment();
                                  },
                                  child: bookingcardwidget()),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
