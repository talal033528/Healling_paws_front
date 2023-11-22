import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/view/user_myprofile.dart';
import 'package:provider/provider.dart';

class ConfirmBooking extends StatelessWidget {
  const ConfirmBooking({super.key});

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
          "Confirm Booking",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        width: double.infinity,
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
                  myprofiledetailscard("Pet:", "Dog Abc"),
                  10.verticalSpace,
                  myprofiledetailscard("Pricing/hr:", "\$30.00"),
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
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SizedBox(
          width: 348.w,
          child: Custombutton(
            buttonText: "Confirm",
            onPressed: () {
              controller.goToPaymentDetails();
            },
          ),
        ),
      ),
    );
  }
}
