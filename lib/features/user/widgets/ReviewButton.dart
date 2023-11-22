import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReviewButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 1000.h,
              color: Colors.white,
              child: Scaffold(
                // floatingActionButton: Container(
                //   width: 390.w,
                //   color: Colors.transparent,
                //   height: 80,
                //   child: Padding(
                //     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                //     child: TextField(
                //       style: TextStyle(
                //         color: const Color(0xff667080),
                //         fontSize: 14,
                //         fontWeight: FontWeight.normal,
                //       ),
                //       decoration: InputDecoration(
                //         contentPadding: const EdgeInsets.symmetric(
                //           vertical: 12.0,
                //           horizontal: 16.0,
                //         ),
                //         hintText: "Type your reviews here",
                //         hintStyle: TextStyle(
                //           color: const Color(0xff667080),
                //           fontSize: 14,
                //           fontWeight: FontWeight.normal,
                //         ),
                //         filled: true,
                //         fillColor: Colors.white,
                //         border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(26),
                //           borderSide: const BorderSide(
                //             width: 1,
                //             color: Color(0xff667080),
                //           ),
                //         ),
                //         enabledBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(26),
                //           borderSide: const BorderSide(
                //             width: 1,
                //             color: Color(0xff667080),
                //           ),
                //         ),
                //         suffixIcon: Padding(
                //           padding: const EdgeInsets.all(15),
                //           child: SvgPicture.asset("assets/icons/send.svg"),
                //         ),
                //         focusedBorder: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(26),
                //           borderSide: const BorderSide(
                //             width: 1,
                //             color: Color(0xff9C9C9C),
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                body: SingleChildScrollView(
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
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Reviews",
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      20.verticalSpace,
                      Container(
                        width: 430.w,
                        height: 1.h,
                        color: Color(0xffA7C4D1),
                      ),
                      Container(
                        width: 390.w,
                        height: 1000.h,
                        child: ListView.builder(
                            itemCount: 3,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      width: 390.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Color(0xff9BA8BB),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          10.verticalSpace,
                                          SizedBox(
                                            width: 350.w,
                                            child: ListTile(
                                              leading: Image.asset(
                                                  "assets/images/profile.png"),
                                              title: Text(
                                                "William Roy",
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              subtitle: Text(
                                                "Today | 02:35 pm",
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.6),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 350.w,
                                            margin: EdgeInsets.only(left: 20),
                                            child: Text(
                                              "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti.",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Color(0xff000000)
                                                    .withOpacity(0.3),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 350.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Reply",
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.3),
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          10.verticalSpace,
                                          Container(
                                            width: 390.w,
                                            height: 1,
                                            color: Color(0xff9C9C9C),
                                          ),
                                          SizedBox(
                                            width: 350.w,
                                            child: ListTile(
                                              leading: Image.asset(
                                                  "assets/images/profile.png"),
                                              title: Text(
                                                "William Roy",
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              subtitle: Text(
                                                "Today | 02:35 pm",
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.6),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 350.w,
                                            margin: EdgeInsets.only(left: 20),
                                            child: Text(
                                              "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti.",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Color(0xff000000)
                                                    .withOpacity(0.3),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          20.verticalSpace,
                                        ],
                                      ),
                                    ),
                                    20.verticalSpace,
                                    Container(
                                      width: 390.w,
                                      height: 1,
                                      color: Color(0xff9C9C9C),
                                    ),
                                    20.verticalSpace,
                                    Container(
                                      width: 390.w,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Color(0xff9BA8BB),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 350.w,
                                            child: ListTile(
                                              leading: Image.asset(
                                                  "assets/images/profile.png"),
                                              title: Text(
                                                "William Roy",
                                                style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Color(0xff000000),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              subtitle: Text(
                                                "Today | 02:35 pm",
                                                style: TextStyle(
                                                  fontSize: 12.sp,
                                                  color: Color(0xff000000)
                                                      .withOpacity(0.6),
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 350.w,
                                            margin: EdgeInsets.only(left: 20),
                                            child: Text(
                                              "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti.",
                                              style: TextStyle(
                                                fontSize: 12.sp,
                                                color: Color(0xff000000)
                                                    .withOpacity(0.3),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 350.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Text(
                                                  "Reply",
                                                  style: TextStyle(
                                                    fontSize: 12.sp,
                                                    color: Color(0xff000000)
                                                        .withOpacity(0.3),
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          10.verticalSpace,
                                          Container(
                                            width: 350.w,
                                            height: 1,
                                            color: Color(0xff9C9C9C),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
      child: Text(
        "256 Reviews",
        style: TextStyle(
          fontSize: 16.sp,
          color: Color(0xff000000),
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }
}
