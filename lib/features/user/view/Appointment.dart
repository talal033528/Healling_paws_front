import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/hendler/widgets/calenderseach.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/widgets/timertextfiled.dart';
import 'package:provider/provider.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

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
          "Appointment",
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
            SizedBox(
              width: 390.w,
              child: MyDropdownWidget(
                options: const ["Pet", "Dog Name"],
                selectedValue: "Pet",
                onChanged: (value) {},
              ),
            ),
            20.verticalSpace,
            SizedBox(
                width: 390.w,
                child: CalendarTextField(
                  hinttext: "September 25, 1996",
                )

                // CustomTextFieldwithicon(
                //   hintText: 'Date of Birth',
                //   suffixIcon: Icons
                //       .calendar_month, // Provide the IconData for the suffix icon
                // )
                ),
            20.verticalSpace,
            Container(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 265.w,
                      child: TimerTextField(labeltext: Text('Set Start Time')),
                    ),
                    Container(
                      width: 56.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff29B6F6)),
                      child: Center(
                        child: Text(
                          "AM",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      width: 56.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff007AB1)),
                      child: Center(
                        child: Text(
                          "AM",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                )),
            20.verticalSpace,
            Container(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 265.w,
                      child: TimerTextField(labeltext: Text('Set End Time')),
                    ),
                    Container(
                      width: 56.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff29B6F6)),
                      child: Center(
                        child: Text(
                          "AM",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      width: 56.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff007AB1)),
                      child: Center(
                        child: Text(
                          "AM",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                )),
            20.verticalSpace,
            Container(
              width: 390.w,
              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //     color: Color(0xFF9C9C9C), // Shadow color
                //     blurRadius: 4.0,
                //     spreadRadius: 0.1,
                //     offset: Offset(0, 2.0),
                //   ),
                // ],
                border: Border.all(
                  color: Color(0xffDBE2EC),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                maxLines: 5, // Set the maximum number of lines
                decoration: InputDecoration(
                  // labelText: 'Your Label',
                  hintText: "Additional",
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffDBE2EC),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffDBE2EC),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
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
            buttonText: "Book Now",
            onPressed: () {
              controller.goTorConfirmBooking();
            },
          ),
        ),
      ),
    );
  }
}
