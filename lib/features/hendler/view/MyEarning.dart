import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/widgets/calenderseach.dart';
import 'package:provider/provider.dart';

class MyEarning extends StatelessWidget {
  const MyEarning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "My Earning",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              20.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 185.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF9C9C9C), // Shadow color
                            blurRadius: 4.0,
                            spreadRadius: 0.1,
                            offset: Offset(0, 2.0),
                          ),
                        ],
                        border: Border.all(color: Color(0xffDDE2E8)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          10.verticalSpace,
                          SizedBox(
                            width: 130.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 22.w,
                                  height: 16.h,
                                  child: Image.asset(
                                    "assets/images/TotalEarning.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 100.w,
                                  child: Text(
                                    "Total Earning",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Color(0xff0000000),
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "\$15,658.36",
                            style: TextStyle(
                                fontSize: 28.sp,
                                color: Color(0xff0000000),
                                fontWeight: FontWeight.w900),
                          ),
                          10.verticalSpace,
                        ],
                      ),
                    ),
                    Container(
                      width: 185.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF9C9C9C), // Shadow color
                            blurRadius: 4.0,
                            spreadRadius: 0.1,
                            offset: Offset(0, 2.0),
                          ),
                        ],
                        border: Border.all(color: Color(0xffDDE2E8)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          10.verticalSpace,
                          SizedBox(
                            width: 130.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 22.w,
                                  height: 16.h,
                                  child: Image.asset(
                                    "assets/images/Last30days.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  width: 100.w,
                                  child: Text(
                                    "Last 30 days",
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Color(0xff0000000),
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "\$2,365.33",
                            style: TextStyle(
                                fontSize: 28.sp,
                                color: Color(0xff0000000),
                                fontWeight: FontWeight.w900),
                          ),
                          10.verticalSpace,
                        ],
                      ),
                    )
                  ],
                ),
              ),
              30.verticalSpace,
              SizedBox(
                width: 390.w,
                height: 50.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        width: 330.w,
                        child: CalendarTextField(
                          hinttext: "September 25, 1996",
                        )),
                    GestureDetector(
                      onTap: () {
                        _showBottomSheet(context);
                      },
                      child: Container(
                        width: 50.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFF9C9C9C), // Shadow color
                              blurRadius: 4.0,
                              spreadRadius: 0.1,
                              offset: Offset(0, 2.0),
                            ),
                          ],
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Color(0xff9BA8BB)),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/filter.png",
                            width: 18.w,
                            height: 16.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              Container(
                width: 390.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9C9C9C), // Shadow color
                      blurRadius: 4.0,
                      spreadRadius: 0.1,
                      offset: Offset(0, 2.0),
                    ),
                  ],
                  border: Border.all(color: Color(0xffDDE2E8)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    10.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "September 2023",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    20.verticalSpace,
                    MyEarningcard(
                        "William Roy", "Aug 11, 2023", "\$15.00", "\$350.00"),
                    10.verticalSpace,
                    MyEarningcard(
                        "William Roy", "Aug 11, 2023", "\$10.00", "\$220.00"),
                    10.verticalSpace,
                    MyEarningcard(
                        "William Roy", "Aug 11, 2023", "\$15.00", "\$350.00"),
                    10.verticalSpace,
                    MyEarningcard(
                        "William Roy", "Aug 11, 2023", "\$15.00", "\$350.00"),
                    10.verticalSpace,
                    MyEarningcard(
                        "William Roy", "Aug 11, 2023", "\$15.00", "\$350.00"),
                    20.verticalSpace,
                  ],
                ),
              ),
              20.verticalSpace,
              Container(
                width: 390.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9C9C9C), // Shadow color
                      blurRadius: 4.0,
                      spreadRadius: 0.1,
                      offset: Offset(0, 2.0),
                    ),
                  ],
                  border: Border.all(color: Color(0xffDDE2E8)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    10.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "August 2023",
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    20.verticalSpace,
                    MyEarningcard(
                        "William Roy", "Aug 11, 2023", "\$15.00", "\$350.00"),
                    10.verticalSpace,
                    MyEarningcard(
                        "William Roy", "Aug 11, 2023", "\$10.00", "\$220.00"),
                    10.verticalSpace,
                    MyEarningcard(
                        "William Roy", "Aug 11, 2023", "\$15.00", "\$350.00"),
                    10.verticalSpace,
                    MyEarningcard(
                        "William Roy", "Aug 11, 2023", "\$15.00", "\$350.00"),
                    10.verticalSpace,
                    MyEarningcard(
                        "William Roy", "Aug 11, 2023", "\$15.00", "\$350.00"),
                    20.verticalSpace,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget MyEarningcard(String name, String text, String amount, String cash) {
  return SizedBox(
    width: 350.w,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w500),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xff48576E).withOpacity(0.6),
                  fontWeight: FontWeight.w400),
            ),
            Text(
              amount,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xffEB4335),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              cash,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xff223850),
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        10.verticalSpace,
        Container(
          width: 350.w,
          height: 1,
          color: Color(0xffDDE2E8),
        )
      ],
    ),
  );
}

// Call this function to show the modal bottom sheet

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      final controller = context.watch<hendlerNavigationViewModel>();
      return Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Color(0xffA7C4D1)),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              width: 348.w,
              child: Custombutton(
                buttonText: "Apply",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyEarning()),
                  );
                },
              ),
            ),
          ),
          body: Container(
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                          width: 70.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(25),
                                // topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: -0.1,
                                blurRadius: 13,
                                offset: const Offset(0, 3),
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
                    options: const ["Pet Category", "Lorem ipsum"],
                    selectedValue: "Pet Category",
                    onChanged: (value) {},
                  ),
                ),
                16.verticalSpace,
                SizedBox(
                  width: 390.w,
                  child: MyDropdownWidget(
                    options: const ["Search By Client Name", "Gainesville"],
                    selectedValue: "Search By Client Name",
                    onChanged: (value) {},
                  ),
                ),
                16.verticalSpace,
                SizedBox(
                    width: 390.w,
                    child: CalendarTextField(
                      hinttext: "Search By Date",
                    )),
              ],
            ),
          ),
        ),
      );
    },
  );
}
