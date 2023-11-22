import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/user/widgets/Notificationscard.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

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
          "Notifications",
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
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        20.verticalSpace,
                        SizedBox(
                          width: 390.w,
                          child: Notificationscard(
                            text: 'Job Completed ',
                            name: 'Rate your experience',
                          ),
                        ),
                        20.verticalSpace,
                        SizedBox(
                          width: 390.w,
                          child: Notificationscard(
                            text: 'Lorem ipsum dolor sit amet consectetur ',
                            name:
                                'adipiscing elit odio, mattis quam tortor taciti ',
                          ),
                        ),
                        20.verticalSpace,
                        Container(
                          width: 390.w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Color(0xffDDE2E8)),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 1.w),
                                blurRadius: 4.w,
                                spreadRadius: -3.w,
                              )
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.w, vertical: 1.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10.h),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: SizedBox(
                                        width: 340.w,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Lorem ipsum dolor sit amet",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            Text(
                                              "Today",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.3),
                                                  fontWeight: FontWeight.w400),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    5.verticalSpace,
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: SizedBox(
                                        width: 350.w,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, ",
                                              style: TextStyle(
                                                  fontSize: 11.sp,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.6),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    5.verticalSpace,
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: SizedBox(
                                        width: 350.w,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "mattis quam tortor taciti aenean luctus nullam enim,",
                                              style: TextStyle(
                                                  fontSize: 11.sp,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.6),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    10.verticalSpace,
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
