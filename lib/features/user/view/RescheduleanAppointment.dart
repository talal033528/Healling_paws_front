import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/view/user_myprofile.dart';
import 'package:provider/provider.dart';

class RescheduleanAppointment extends StatelessWidget {
  const RescheduleanAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<UserNavigationViewModel>();
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
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Color(0xffDDE2E8)),
                      borderRadius: BorderRadius.circular(10)),
                  width: 390.w,
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/Completed.png",
                      width: 17.w,
                      height: 17.h,
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Job Completed",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff0000000)),
                        ),
                        Text(
                          "Rate & Reviews",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Color(0xff0000000)),
                        )
                      ],
                    ),
                  )),
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
                    myprofiledetailscard(
                        "Service Provider:", "ABC Paws Service"),
                    10.verticalSpace,
                    myprofiledetailscard("Booking Date:", "September 15, 2023"),
                    10.verticalSpace,
                    myprofiledetailscard("Selected Pet:", "Dog Abc,"),
                    10.verticalSpace,
                    myprofiledetailscard(
                        "Selected Date:", "September 22, 2023"),
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SizedBox(
          width: 348.w,
          child: Custombutton(
            buttonText: "Reschedule an Appointment",
            onPressed: () {
              controller.goToAppointment();
            },
          ),
        ),
      ),
    );
  }
}
