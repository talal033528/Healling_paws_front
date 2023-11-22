import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/view/handler_MarkasCompleted.dart';
import 'package:provider/provider.dart';

class handler_jobcomplete extends StatelessWidget {
  const handler_jobcomplete({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "Booking Details",
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
              Container(
                height: 55.h,
                width: 390.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffDDE2E8))),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Color(0xff92C83E),
                          size: 20,
                        ),
                        Text(
                          "Job Completed",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff48576E),
                              fontWeight: FontWeight.w900),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              20.verticalSpace,
              Container(
                width: 390.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffDDE2E8)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    20.verticalSpace,
                    SizedBox(
                      width: 340.w,
                      child: Text(
                        "User Details",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        "assets/images/profile2.png",
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sara William",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w900),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.goTouserprofile();
                            },
                            child: Text(
                              "View Profile",
                              style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Color(0xff29B6F6),
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                        ],
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          10.verticalSpace,
                          Text(
                            "New York",
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Color(0xff000000).withOpacity(0.6),
                                fontWeight: FontWeight.w900),
                          ),
                          10.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "sara.william@domain.com",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Color(0xff000000).withOpacity(0.6),
                                    fontWeight: FontWeight.w900),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.goToviewlocation();
                                },
                                child: Text(
                                  "View Location",
                                  style: TextStyle(
                                      fontSize: 11.sp,
                                      color: Color(0xff29B6F6),
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    20.verticalSpace,
                  ],
                ),
              ),
              20.verticalSpace,
              Container(
                width: 390.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffDDE2E8)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    22.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Booking Details",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    20.verticalSpace,
                    myMarkasCompleted("Pet:", "Dog Name ABC"),
                    10.verticalSpace,
                    myMarkasCompleted("Date:", "September 22, 2023,"),
                    10.verticalSpace,
                    myMarkasCompleted("Start Time:", "03:00 PM"),
                    10.verticalSpace,
                    myMarkasCompleted("End Time:", "09:00 PM"),
                    22.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Additional",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    10.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff000000).withOpacity(0.3),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    20.verticalSpace,
                  ],
                ),
              ),
              Container(
                width: 390.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffDDE2E8)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    20.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Payment Details",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    20.verticalSpace,
                    myMarkasCompleted("Charges", "\$30.00 / hr"),
                    10.verticalSpace,
                    myMarkasCompleted("Total Time", "03 hrs"),
                    10.verticalSpace,
                    myMarkasCompleted("Amount", "\$90.00"),
                    10.verticalSpace,
                    myMarkasCompleted("Tax", "\$10.00"),
                    10.verticalSpace,
                    myMarkasCompleted("Sub Total", "\$100.00"),
                    10.verticalSpace,
                    myMarkasCompleted("Payment Method", "Apple Pay"),
                    22.verticalSpace,
                  ],
                ),
              ),
              20.verticalSpace,
              Container(
                width: 390.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffDDE2E8)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    20.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Client Review",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    10.verticalSpace,
                    ListTile(
                      leading: Image.asset(
                        "assets/images/profile2.png",
                      ),
                      title: Text(
                        "Sara William",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w900),
                      ),
                      subtitle: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/star3.png",
                            width: 18.w,
                            fit: BoxFit.cover,
                          ),
                          3.horizontalSpace,
                          Image.asset(
                            "assets/images/star3.png",
                            width: 18.w,
                            fit: BoxFit.cover,
                          ),
                          3.horizontalSpace,
                          Image.asset(
                            "assets/images/star3.png",
                            width: 18.w,
                            fit: BoxFit.cover,
                          ),
                          3.horizontalSpace,
                          Image.asset(
                            "assets/images/emptystar.png",
                            width: 18.w,
                            fit: BoxFit.cover,
                          ),
                          3.horizontalSpace,
                          Image.asset(
                            "assets/images/emptystar.png",
                            width: 18.w,
                            fit: BoxFit.cover,
                          ),
                          3.horizontalSpace,
                          Text(
                            "(3/5)",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    10.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff000000).withOpacity(0.3),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    10.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Reply",
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Color(0xff000000).withOpacity(0.3),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    10.verticalSpace,
                    Container(
                      width: 350.w,
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
                          color: Color(0xffDDE2E8)),
                      child: Column(
                        children: [
                          20.verticalSpace,
                          SizedBox(
                            width: 330.w,
                            child: Text(
                              "ABC Paws Service",
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Color(0xff000000),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          10.verticalSpace,
                          SizedBox(
                            width: 330.w,
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor",
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Color(0xff000000).withOpacity(0.3),
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                          20.verticalSpace,
                        ],
                      ),
                    ),
                    20.verticalSpace,
                  ],
                ),
              ),
              50.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
