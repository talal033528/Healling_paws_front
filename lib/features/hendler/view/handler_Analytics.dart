import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/hendler/handlermodel/analyticsviewmodel.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';

import 'package:healing_paws/features/hendler/widgets/chartwithtwoseriesyear.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:table_calendar/table_calendar.dart';

class hendler_Analytics extends StatefulWidget {
  const hendler_Analytics({super.key});

  @override
  State<hendler_Analytics> createState() => _hendler_AnalyticsState();
}

class _hendler_AnalyticsState extends State<hendler_Analytics>
    with TickerProviderStateMixin {
  bool changecolor = false;
  late TabController tabController;

  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    TabController tabController = TabController(length: 1, vsync: this);
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
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
            "Analytics",
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
        ),
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                20.verticalSpace,
                // TabBar(
                //   indicatorColor: Color(0xff223850),
                //   unselectedLabelStyle: TextStyle(
                //     color: Colors.white, // Adjust the color for unselected tabs.
                //   ),
                //   isScrollable: true,
                //   indicatorSize: TabBarIndicatorSize.label,
                //   indicator: BoxDecoration(
                //     color: Color(0xff223850), // Color for selected tab container
                //     borderRadius: BorderRadius.circular(100),
                //   ),
                //   labelColor: Color(0xff223850),
                //   unselectedLabelColor:
                //       Color(0xff29B6F6), // Color for unselected tab text
                //   tabs: [

                //     // Tab(
                //     //   child: Container(
                //     //     width: 125.w,
                //     //     height: 40.h,
                //     //     alignment: Alignment.center,
                //     //     decoration: BoxDecoration(
                //     //       color: Color(
                //     //           0xff29B6F6), // Color for unselected tab container
                //     //       borderRadius: BorderRadius.circular(100),
                //     //     ),
                //     //     child: Text(
                //     //       "Weekly",
                //     //       style:
                //     //           TextStyle(fontSize: 14.sp, color: Color(0xff000000)),
                //     //     ),
                //     //   ),
                //     // ),
                //     // Tab(
                //     //   child: Container(
                //     //     width: 125.w,
                //     //     height: 40.h,
                //     //     alignment: Alignment.center,
                //     //     decoration: BoxDecoration(
                //     //       color: Color(
                //     //           0xff29B6F6), // Color for unselected tab container
                //     //       borderRadius: BorderRadius.circular(100),
                //     //     ),
                //     //     child: Text(
                //     //       "Monthly",
                //     //       style:
                //     //           TextStyle(fontSize: 14.sp, color: Color(0xff000000)),
                //     //     ),
                //     //   ),
                //     // ),
                //     // Tab(
                //     //   child: Container(
                //     //     width: 125.w,
                //     //     height: 40.h,
                //     //     alignment: Alignment.center,
                //     //     decoration: BoxDecoration(
                //     //       color: Color(
                //     //           0xff29B6F6), // Color for unselected tab container
                //     //       borderRadius: BorderRadius.circular(100),
                //     //     ),
                //     //     child: Text(
                //     //       "Yearly",
                //     //       style:
                //     //           TextStyle(fontSize: 14.sp, color: Color(0xff000000)),
                //     //     ),
                //     //   ),
                //     // ),

                //   ],
                //   controller: tabController,
                // ),
                SizedBox(
                  height: 40.h,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.reportfilters.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(left: index == 0 ? 0 : 10.w),
                        child: GestureDetector(
                          onTap: () {
                            controller.selectreportSelected(index);
                          },
                          child: Container(
                            width: 122.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: controller.reportSelected == index
                                      ? [Color(0xff223850), Color(0xff223850)]
                                      : [
                                          Color(0xff29B6F6),
                                          Color(0xff29B6F6),
                                        ],
                                ),
                                border: Border.all(
                                  color: controller.reportSelected != index
                                      ? Colors.white
                                      : Colors.white,
                                  width: 1.0,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(26.r))),
                            child: Center(
                              child: Text(
                                controller.reportfilters[index],
                                style: TextStyle(
                                    color: controller.reportSelected != index
                                        ? Colors.black
                                        : Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                20.verticalSpace,

                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xffDDE2E8),
                        )),
                    width: 390.w,
                    height: 350.h,
                    child: ChartWithMultipleYears()),
                // Expanded(
                //   child: Container(
                //     child: TabBarView(controller: tabController, children: [
                //       ListView.builder(
                //           shrinkWrap: true,
                //           physics: NeverScrollableScrollPhysics(),
                //           itemCount: 1,
                //           itemBuilder: (context, index) {
                //             return Container(
                //                 decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(10),
                //                     border: Border.all(
                //                       color: Color(0xffDDE2E8),
                //                     )),
                //                 width: 390.w,
                //                 height: 350.h,
                //                 child: ChartWithMultipleYears());
                //           }),
                //       ListView.builder(
                //           shrinkWrap: true,
                //           physics: NeverScrollableScrollPhysics(),
                //           itemCount: 1,
                //           itemBuilder: (context, index) {
                //             return Container(
                //                 decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(10),
                //                     border: Border.all(
                //                       color: Color(0xffDDE2E8),
                //                     )),
                //                 width: 390.w,
                //                 height: 350.h,
                //                 child: ChartWithMultipleYears());
                //           }),
                //       ListView.builder(
                //           shrinkWrap: true,
                //           physics: NeverScrollableScrollPhysics(),
                //           itemCount: 1,
                //           itemBuilder: (context, index) {
                //             return Container(
                //                 decoration: BoxDecoration(
                //                     borderRadius: BorderRadius.circular(10),
                //                     border: Border.all(
                //                       color: Color(0xffDDE2E8),
                //                     )),
                //                 width: 390.w,
                //                 height: 350.h,
                //                 child: ChartWithMultipleYears());
                //           }),
                //     ]),
                //   ),
                // ),

                // Container(
                //   width: 390.w,
                //   child: TableCalendar(
                //     rowHeight: 43,
                //     headerStyle: HeaderStyle(
                //       formatButtonVisible: true,
                //       titleCentered: true,
                //       titleTextStyle: TextStyle(
                //         fontSize: 16,
                //         fontWeight: FontWeight.bold,
                //         // color: Color(0xff29B6F6),
                //       ),
                //       leftChevronIcon:
                //           Icon(Icons.arrow_left, color: Color(0xff29B6F6)),
                //       rightChevronIcon:
                //           Icon(Icons.arrow_right, color: Color(0xff29B6F6)),
                //     ),
                //     calendarStyle: CalendarStyle(
                //       todayDecoration: BoxDecoration(
                //         color: Color(0xff29B6F6),
                //         shape: BoxShape.circle,
                //       ),
                //       selectedDecoration: BoxDecoration(
                //         color: Color(0xff29B6F6),
                //         shape: BoxShape.circle,
                //       ),
                //       defaultTextStyle: TextStyle(
                //         color: Color(0XFF000000), // Set the default text color
                //         fontSize: 16,
                //       ),
                //       selectedTextStyle: TextStyle(color: Color(0XFFffffff)),
                //       holidayTextStyle: TextStyle(color: Colors.red),
                //       weekendTextStyle: TextStyle(color: Color(0xff29B6F6)),
                //       outsideTextStyle: TextStyle(color: Colors.white),
                //       outsideDaysVisible: true,
                //     ),
                //     availableGestures: AvailableGestures.all,
                //     selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
                //     focusedDay: _focusedDay,
                //     firstDay: DateTime.utc(2010, 10, 16),
                //     lastDay: DateTime.utc(2030, 3, 14),
                //     onDaySelected: (selectedDay, focusedDay) {
                //       // Handle day selection if needed
                //     },
                //   ),
                // ),

                10.verticalSpace,
                earningdetails(
                    "assets/icons/calander.svg", "Total Bookings", "265"),
                10.verticalSpace,
                GestureDetector(
                  onTap: () {
                    controller.goToMyEarning();
                  },
                  child: earningdetails("assets/icons/earnning.svg",
                      "Total Earning", "\$15,658.36"),
                ),
                10.verticalSpace,
                GestureDetector(
                  onTap: () {
                    controller.goToMyEarning();
                  },
                  child: earningdetails(
                      "assets/icons/coins.svg", "Last 30 days", "\$2,365.33"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget earningdetails(String iconpath, String text, String amount) {
  return Container(
    width: 390.w,
    decoration: BoxDecoration(
        border: Border.all(color: Color(0xffDDE2E8)),
        borderRadius: BorderRadius.circular(10)),
    child: ListTile(
      leading: SvgPicture.asset(
        iconpath,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xff223850),
        ),
      ),
      trailing: Text(
        amount,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          color: Color(0xff48576E),
        ),
      ),
    ),
  );
}

class ChartWithTwoSeries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      // trackballBehavior: TrackballBehavior(
      //   enable: true,
      //   markerSettings: const TrackballMarkerSettings(
      //     height: 10,
      //     width: 10,
      //     markerVisibility: TrackballVisibilityMode.visible,
      //     borderColor: Colors.black,
      //     borderWidth: 4,
      //     color: Colors.blue,
      //   ),
      // ),

      primaryXAxis: CategoryAxis(),
      primaryYAxis:
          NumericAxis(isVisible: false), // Hide the side numbers on the Y-axis
      series: <ChartSeries>[
        // First series
        AreaSeries<SalesData, String>(
          borderColor: Color(0xffffffff),
          color: Color(0xffDDE2E8),
          name: 'Series 1',
          dataSource: [
            SalesData('Jan', 8),
            SalesData('Feb', 10),
            SalesData('Mar', 11),
            SalesData('Apr', 15),
            SalesData('May', 8),
            SalesData('Jun', 12),
            SalesData('Jul', 14),
            SalesData('Aug', 10),
            SalesData('Sep', 16),
            SalesData('Oct', 18),
            SalesData('Nov', 22),
            SalesData('Dec', 20),
          ],
          xValueMapper: (SalesData sales, _) => sales.month,
          yValueMapper: (SalesData sales, _) => sales.sales,
        ),
        // Second series
        AreaSeries<SalesData, String>(
          name: 'Series 2',
          dataSource: [
            SalesData('Jan', 5),
            SalesData('Feb', 3),
            SalesData('Mar', 4),
            SalesData('Apr', 2),
            SalesData('May', 6),
            SalesData('Jun', 8),
            SalesData('Jul', 10),
            SalesData('Aug', 9),
            SalesData('Sep', 11),
            SalesData('Oct', 12),
            SalesData('Nov', 14),
            SalesData('Dec', 13),
          ],
          xValueMapper: (SalesData sales, _) => sales.month,
          yValueMapper: (SalesData sales, _) => sales.sales,
          color: Color(0xff29B6F6), // Set a custom color
        )
      ],
    );
  }
}

class SalesData {
  SalesData(this.month, this.sales);

  final String month;
  final double sales;
}
