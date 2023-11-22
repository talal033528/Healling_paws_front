import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/hendler/widgets/calenderseach.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/widgets/timertextfiled.dart';
import 'package:provider/provider.dart';

class RescheduleBooking extends StatelessWidget {
  const RescheduleBooking({super.key});

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
          "RescheduleBooking",
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
              height: 55.h,
              child: TextFormField(
                style: TextStyle(color: Color(0xFf9BA8BB), fontSize: 14),
                decoration: InputDecoration(
                  labelText: "Service Provider",
                  labelStyle:
                      TextStyle(color: Color(0xff000000), fontSize: 14.sp),
                  hintText: "ABC Paws Service",
                  filled: true,
                  fillColor: Colors.white,
                  hintStyle:
                      const TextStyle(fontSize: 14, color: Color(0xFf9BA8BB)),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: GestureDetector(
                      onTap: () {
                        controller.goToPawsService();
                      },
                      child: Text(
                        "View Profile",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff29B6F6)),
                      ),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffDBE2EC),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffDBE2EC),
                    ),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
                maxLines: 1,
              ),
            ),
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
                border: Border.all(
                  color: Color(0xff8F9DB2),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                maxLines: 5, // Set the maximum number of lines
                decoration: InputDecoration(
                  // labelText: 'Your Label',
                  hintText: "Additional",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color:
                            Colors.red), // You can customize the border color
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
            buttonText: "Reschedule",
            onPressed: () {
              controller.goT0BookingDetails();
            },
          ),
        ),
      ),
    );
  }
}
