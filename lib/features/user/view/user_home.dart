import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/view/Appointment.dart';
import 'package:healing_paws/features/user/view/PawsService.dart';
import 'package:healing_paws/features/user/view/usermain.dart';
import 'package:provider/provider.dart';

class user_home extends StatelessWidget {
  const user_home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<UserNavigationViewModel>();
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/homebg.png"),
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
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
          title: Image.asset(
            "assets/images/title.png",
            width: 152.w,
            height: 22.h,
          ),
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
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                25.verticalSpace,
                Stack(
                  children: [
                    SizedBox(
                      width: 390.w,
                      child: TextField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0XFF0ffffff),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          prefixIcon: Icon(
                            Icons.search,
                            color: const Color(0xff000000),
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.only(
                                right: 10, top: 10, left: 10, bottom: 10),
                            child: Image.asset(
                              "assets/images/suffix.png",
                              width: 32.w,
                              height: 31.h,
                            ),
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: const Color(0xff000000).withOpacity(0.7),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Color(0xf9BA8BB)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide(color: Color(0xf9BA8BB)),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            // Show a bottom sheet when the search bar is tapped
                            showModalBottomSheet(
                              backgroundColor: Colors.white,
                              context: context,
                              builder: (context) {
                                return Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2, color: Color(0xffA7C4D1)),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25))),
                                  child: Scaffold(
                                    backgroundColor: Colors.transparent,
                                    bottomNavigationBar: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: SizedBox(
                                        width: 348.w,
                                        child: Custombutton(
                                          buttonText: "Apply",
                                          onPressed: () {
                                            controller.goToSearchResults();
                                          },
                                        ),
                                      ),
                                    ),
                                    body: Container(
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: Container(
                                                    width: 70.w,
                                                    height: 55.h,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                              topRight: Radius
                                                                  .circular(25),
                                                              // topLeft: Radius.circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      20)),
                                                      color: Colors.white,
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.grey
                                                              .withOpacity(0.4),
                                                          spreadRadius: -0.1,
                                                          blurRadius: 13,
                                                          offset: const Offset(
                                                              0, 3),
                                                        )
                                                      ],
                                                    ),
                                                    child: Icon(
                                                      Icons.cancel,
                                                      color: Colors.black,
                                                    )),
                                              ),
                                            ],
                                          ),
                                          20.verticalSpace,
                                          Text(
                                            "Search Filter",
                                            style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Color(0xff000000),
                                                fontWeight: FontWeight.w700),
                                          ),
                                          46.verticalSpace,
                                          SizedBox(
                                            width: 390.w,
                                            child: MyDropdownWidget(
                                              options: const [
                                                "Pet Category",
                                                "Lorem ipsum"
                                              ],
                                              selectedValue: "Pet Category",
                                              onChanged: (value) {},
                                            ),
                                          ),
                                          16.verticalSpace,
                                          SizedBox(
                                            width: 390.w,
                                            child: MyDropdownWidget(
                                              options: const [
                                                "City",
                                                "Gainesville"
                                              ],
                                              selectedValue: "City",
                                              onChanged: (value) {},
                                            ),
                                          ),
                                          16.verticalSpace,
                                          DistanceForm(),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                25.verticalSpace,
                SizedBox(
                  width: 390.w,
                  height: 200.h,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: 80,
                        top: 20,
                        child: GestureDetector(
                          onTap: () {
                            showImageDialog(context);
                          },
                          child: Image.asset(
                            "assets/images/footmark1.png",
                            width: 31.w,
                            height: 31.h,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 100,
                        top: 50,
                        child: GestureDetector(
                          onTap: () {
                            showImageDialog(context);
                          },
                          child: Image.asset(
                            "assets/images/footmark1.png",
                            width: 31.w,
                            height: 31.h,
                          ),
                        ),
                      ),
                      Positioned(
                        child: GestureDetector(
                          onTap: () {
                            controller.goTouser_myprofile();
                          },
                          child: Image.asset(
                            "assets/images/profile1.png",
                            width: 56.w,
                            height: 56.h,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: GestureDetector(
                          onTap: () {
                            showImageDialog(context);
                          },
                          child: Image.asset(
                            "assets/images/footmark1.png",
                            width: 31.w,
                            height: 31.h,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        right: 40,
                        child: GestureDetector(
                          onTap: () {
                            showImageDialog(context);
                          },
                          child: Image.asset(
                            "assets/images/footmark1.png",
                            width: 31.w,
                            height: 31.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                161.verticalSpace,
                Container(
                  height: 189.h,
                  margin: EdgeInsets.only(left: 5),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: GestureDetector(
                              onTap: () {
                                controller.goToPawsService();
                              },
                              child: gogdetailcard()),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Import your screen util package

class DistanceForm extends StatefulWidget {
  @override
  _DistanceFormState createState() => _DistanceFormState();
}

class _DistanceFormState extends State<DistanceForm> {
  double _startValue = 0.0;
  double _endValue = 10.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "  Distance",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xff0000000),
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "Miles",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xff0000000),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          10.verticalSpace,
          // Image.asset(
          //   "assets/images/Search Filter.png",
          //   fit: BoxFit.cover,
          // ),
          SizedBox(
            width: 400.w,
            child: RangeSlider(
              activeColor: Color(0xff29B6F6),
              inactiveColor: Color(0xff8F9DB2),
              min: 0.0,
              max: 10.0, // Adjusted max to represent miles (0 to 10 miles)
              values: RangeValues(_startValue, _endValue),
              onChanged: (newValues) {
                setState(() {
                  _startValue = newValues.start;
                  _endValue = newValues.end;
                });
              },
            ),
          ),
          10.verticalSpace,

          SizedBox(
            width: 390.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "   0",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xff0000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "2m",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xff0000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "6m",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xff0000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "10m",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Color(0xff0000000),
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void showImageDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        contentPadding: EdgeInsets.zero, // To remove default padding

        content: SingleChildScrollView(
          child: Container(
            width: 600.w,
            // height: 438.h,
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xffA7C4D1), width: 2),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))
                // borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(10),
                //     topRight: Radius.circular(10),
                //     bottomLeft: Radius.circular(20),
                //     bottomRight: Radius.circular(20)),
                // border: Border(
                //     bottom: BorderSide(color: Color(0xffA7C4D1), width: 2))
                ),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 134.h,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/createprofile_bg.png"),
                    ),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                                width: 44.w,
                                height: 44.h,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(6),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.4),
                                      spreadRadius: -0.1,
                                      blurRadius: 13,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Image.asset(
                                    "assets/images/cancel.png",
                                    width: 14.w,
                                    height: 14.h,
                                    fit: BoxFit.contain,
                                  ),
                                )

                                // Icon(
                                //   Icons.cancel,
                                //   color: Colors.black,
                                //   size: 18,
                                // ),
                                ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: -70,
                        child: Image.asset(
                          "assets/images/createprofile_img.png",
                          width: 110.w,
                          height: 110.h,
                        ),
                      ),
                    ],
                  ),
                ),
                15.verticalSpace,
                Container(
                  margin: EdgeInsets.only(left: 100),
                  width: 230.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ABC Paws Service",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        width: 80.w,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 65.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                10.verticalSpace,

                Container(
                  margin: EdgeInsets.only(left: 100),
                  width: 250.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100.w,
                        child: Row(
                          children: [
                            SizedBox(
                                width: 80.w,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      "assets/images/star3.png",
                                      width: 10,
                                    ),
                                    Text(
                                      "4.5 Rating",
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Color(0xff000000),
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                30.verticalSpace,
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 390.w,
                  child: Text(
                    "About",
                    style: TextStyle(
                        fontSize: 14.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w900),
                  ),
                ),
                12.verticalSpace,
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 390.w,
                  child: Text(
                    maxLines: 3,
                    " Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at  vel purus proin eleifend nisi dictum. ",
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: Color(0xff000000).withOpacity(0.9),
                        fontWeight: FontWeight.w400),
                  ),
                ),
                30.verticalSpace,
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 390.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PawsService()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(26),
                              border: Border.all(color: Color(0xffDDE2E8))),
                          width: 130.w,
                          height: 40.h,
                          child: Center(
                            child: Text(
                              "View Profile",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Appointment()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [Color(0xff007AB1), Color(0xff29B6F6)],
                              ),
                              borderRadius: BorderRadius.circular(26),
                              border: Border.all(color: Color(0xffDDE2E8))),
                          width: 175.w,
                          height: 40.h,
                          child: Center(
                            child: Text(
                              "Book An Appointment",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Color(0xffffffff),
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      )
                    ],
                  ),
                ),
                30.verticalSpace,

                // Add your additional content here
              ],
            ),
          ),
        ),
      );
    },
  );
}
