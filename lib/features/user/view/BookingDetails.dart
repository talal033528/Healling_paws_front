import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/view/user_myprofile.dart';
import 'package:provider/provider.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<UserNavigationViewModel>();
    final bottomController = context.watch<hendlerNavigationViewModel>();
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
                width: 390.w,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffDDE2E8)),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    20.verticalSpace,
                    myprofiledetailscard(
                        "Service Provider:", "ABC Paws Service"),
                    10.verticalSpace,
                    myprofiledetailscard("Booking Date:", "September 15, 2023"),
                    10.verticalSpace,
                    myprofiledetailscard("Selected Pet:", "Dog Abc"),
                    10.verticalSpace,
                    myprofiledetailscard(
                        "Selected Date:", "September 22, 2023"),
                    10.verticalSpace,
                    myprofiledetailscard("Start Time:", "03:00 PM"),
                    10.verticalSpace,
                    myprofiledetailscard("End Time:", "09:00 PM"),
                    10.verticalSpace,
                    myprofiledetailscard("Phone Number::", "+1 234 567890"),
                    10.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Additional",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    10.verticalSpace,
                    SizedBox(
                      width: 350.w,
                      child: Text(
                        "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xff000000).withOpacity(0.3),
                            fontWeight: FontWeight.w900),
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
        child: Container(
          height: 150.h,
          child: Column(
            children: [
              SizedBox(
                width: 348.w,
                child: Custombutton(
                  buttonText: "Reschedule",
                  onPressed: () {
                    controller.goToRescheduleBooking();
                  },
                ),
              ),
              20.verticalSpace,
              SizedBox(
                width: 348.w,
                child: Custombutton(
                  buttonText: "Refund",
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            "Refund!",
                            textAlign:
                                TextAlign.center, // Center align the text
                            style: TextStyle(
                              fontSize: 30.sp,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          content: Text(
                            "Are you sure you want to Refund?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff000000).withOpacity(0.3),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          actions: [
                            SizedBox(
                              width: 390.w,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                            child: SimpleDialog(
                                              backgroundColor: Colors.white,
                                              children: [
                                                Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            Navigator.of(
                                                                    context)
                                                                .pop();
                                                          },
                                                          child: Container(
                                                            width: 40.w,
                                                            height: 50.h,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        25),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        20),
                                                              ),
                                                              color:
                                                                  Colors.white,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.4),
                                                                  spreadRadius:
                                                                      -0.1,
                                                                  blurRadius:
                                                                      13,
                                                                  offset:
                                                                      const Offset(
                                                                          0, 3),
                                                                )
                                                              ],
                                                            ),
                                                            child: Icon(
                                                              Icons.cancel,
                                                              color:
                                                                  Colors.black,
                                                              size: 11,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Column(
                                                        children: [
                                                          SizedBox(
                                                              height: 20
                                                                  .w), // Replaced VerticalSpace with SizedBox
                                                          Text(
                                                            "Refund Reason",
                                                            style: TextStyle(
                                                              fontSize: 16.sp,
                                                              color: Color(
                                                                  0xff000000),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                            ),
                                                          ),
                                                          SizedBox(height: 20),
                                                          SizedBox(
                                                              height: 20
                                                                  .w), // Adjusted vertical spacing
                                                          const RefundReasoncard(
                                                            text:
                                                                'Lorem ipsum dolor sit amet consectetur.',
                                                          ),
                                                          SizedBox(
                                                              height: 10.w),
                                                          const RefundReasoncard(
                                                            text:
                                                                'Lorem ipsum dolor sit amet consectetur.',
                                                          ),
                                                          SizedBox(
                                                              height: 10.w),
                                                          const RefundReasoncard(
                                                            text:
                                                                'Lorem ipsum dolor sit amet consectetur.',
                                                          ),
                                                          SizedBox(
                                                              height: 10.w),
                                                          const RefundReasoncard(
                                                            text:
                                                                'Lorem ipsum dolor sit amet consectetur.',
                                                          ),
                                                          SizedBox(
                                                              height: 10.w),
                                                          const RefundReasoncard(
                                                            text: 'Other',
                                                          ),
                                                          SizedBox(
                                                              height: 25.w),
                                                          Container(
                                                            width: 350.w,
                                                            height: 104.h,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              border: Border.all(
                                                                  color: Color(
                                                                      0xff8F9DB2)),
                                                            ),
                                                            child: Center(
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        8.0),
                                                                child: Text(
                                                                  "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas",
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        14.sp,
                                                                    color: Color(
                                                                            0xff000000)
                                                                        .withOpacity(
                                                                            0.3),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          25.verticalSpace,
                                                          SizedBox(
                                                            width: 350.w,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                GestureDetector(
                                                                  onTap: () {
                                                                    controller
                                                                        .goTouserrefundpolicy();
                                                                  },
                                                                  child: Text(
                                                                    "Refund Policy",
                                                                    style: TextStyle(
                                                                        fontSize: 14
                                                                            .sp,
                                                                        color: Color(
                                                                            0xff0000000),
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          20.verticalSpace,
                                                          Custombutton(
                                                            buttonText:
                                                                "Submit",
                                                            onPressed: () {
                                                              showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (BuildContext
                                                                        context) {
                                                                  return AlertDialog(
                                                                    backgroundColor:
                                                                        Colors
                                                                            .white,
                                                                    content:
                                                                        Container(
                                                                      width:
                                                                          390.w,
                                                                      height:
                                                                          350.h,
                                                                      child:
                                                                          Column(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        children: [
                                                                          Image
                                                                              .asset(
                                                                            "assets/images/ThankYou.png",
                                                                            width:
                                                                                104.w,
                                                                            height:
                                                                                104.h,
                                                                          ),
                                                                          Text(
                                                                            "Successfully!",
                                                                            style: TextStyle(
                                                                                fontSize: 30.sp,
                                                                                color: Color(0xff0000000),
                                                                                fontWeight: FontWeight.w900),
                                                                          ),
                                                                          10.verticalSpace,
                                                                          Text(
                                                                            "Your refund request has been submitted",
                                                                            style: TextStyle(
                                                                                fontSize: 12.sp,
                                                                                color: Color(0xff48576E),
                                                                                fontWeight: FontWeight.w400),
                                                                          ),
                                                                          10.verticalSpace,
                                                                          Text(
                                                                            "successfully",
                                                                            style: TextStyle(
                                                                                fontSize: 12.sp,
                                                                                color: Color(0xff48576E),
                                                                                fontWeight: FontWeight.w400),
                                                                          ),
                                                                          30.verticalSpace,
                                                                          GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              controller.goTouser_main();
                                                                              bottomController.changeBottomIndex(0);
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: 140.w,
                                                                              height: 35,
                                                                              decoration: BoxDecoration(
                                                                                  boxShadow: [
                                                                                    BoxShadow(
                                                                                      color: Color(0xFF9C9C9C), // Shadow color
                                                                                      blurRadius: 4.0,
                                                                                      spreadRadius: 0.1,
                                                                                      offset: Offset(0, 2.0),
                                                                                    ),
                                                                                  ],
                                                                                  gradient: const LinearGradient(
                                                                                    begin: Alignment.centerLeft,
                                                                                    end: Alignment.centerRight,
                                                                                    colors: [
                                                                                      Color(0xff007AB1),
                                                                                      Color(0xff007AB1),
                                                                                      Color(0xff29B6F6)
                                                                                    ],
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(100),
                                                                                  border: Border.all(color: Color(0xffDDE2E8))),
                                                                              child: Center(
                                                                                child: Text(
                                                                                  "Back to Home",
                                                                                  style: TextStyle(fontSize: 14.sp, color: Color(0xffffffff), fontWeight: FontWeight.w400),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          );
//
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: 140.w,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(
                                                0xFF9C9C9C), // Shadow color
                                            blurRadius: 4.0,
                                            spreadRadius: 0.1,
                                            offset: Offset(0, 2.0),
                                          ),
                                        ],
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        border: Border.all(
                                            color: Color(0xffDDE2E8)),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Yes, Refund",
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      controller.goTouser_main();
                                      // bottomController.changeBottomIndex(0);
                                    },
                                    child: Container(
                                      width: 140.w,
                                      height: 35,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(
                                                  0xFF9C9C9C), // Shadow color
                                              blurRadius: 4.0,
                                              spreadRadius: 0.1,
                                              offset: Offset(0, 2.0),
                                            ),
                                          ],
                                          gradient: const LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                            colors: [
                                              Color(0xff007AB1),
                                              Color(0xff007AB1),
                                              Color(0xff29B6F6)
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          border: Border.all(
                                              color: Color(0xffDDE2E8))),
                                      child: Center(
                                        child: Text(
                                          "No",
                                          style: TextStyle(
                                              fontSize: 14.sp,
                                              color: Color(0xffffffff),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RefundReasoncard extends StatefulWidget {
  final String text;
  const RefundReasoncard({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _RefundReasoncardState createState() => _RefundReasoncardState();
}

class _RefundReasoncardState extends State<RefundReasoncard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 50.w,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isSelected = !isSelected;
                    });
                  },
                  child: isSelected
                      ? Icon(Icons.radio_button_checked)
                      : Icon(Icons.radio_button_unchecked_outlined),
                ),
              ),
              SizedBox(
                width: 250.w,
                child: Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w600,
                  ),
                  // Add this line to remove underline
                ),
              ),
            ],
          ),
          10.verticalSpace,
          Container(
            width: 390.w,
            height: 1.h,
            color: Color(0xff8F9DB2),
          )
        ],
      ),
    );
  }
}

//

                                           