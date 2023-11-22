import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/user/view/user_myprofile.dart';
import 'package:provider/provider.dart';

class hendler_viewdetails extends StatelessWidget {
  const hendler_viewdetails({super.key});

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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SizedBox(
          width: 348.w,
          child: Custombutton(
            buttonText: "Message",
            onPressed: () {
              controller.goTochatscreen();
            },
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
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
                    myprofiledetailscard("Pet:", "Dog Name ABC"),
                    10.verticalSpace,
                    myprofiledetailscard("Date:", "September 22, 2023,"),
                    10.verticalSpace,
                    myprofiledetailscard("Start Time:", "03:00 PM"),
                    10.verticalSpace,
                    myprofiledetailscard("End Time:", "09:00 PM"),
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
                        "Payment Details",
                        style: TextStyle(
                            fontSize: 18.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    20.verticalSpace,
                    myprofiledetailscard("Charges", "\$30.00 / hr"),
                    10.verticalSpace,
                    myprofiledetailscard("Total Time", "03 hrs"),
                    10.verticalSpace,
                    myprofiledetailscard("Amount", "\$90.00"),
                    10.verticalSpace,
                    myprofiledetailscard("Tax", "\$10.00"),
                    10.verticalSpace,
                    myprofiledetailscard("Sub Total", "\$100.00"),
                    10.verticalSpace,
                    myprofiledetailscard("Payment Method", "Apple Pay"),
                    22.verticalSpace,
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
