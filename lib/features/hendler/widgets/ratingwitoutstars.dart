import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingModalWithoutstars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
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
                      "Rating",
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
                    // 20.verticalSpace,
                    // Container(
                    //   width: 300.w,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Image.asset(
                    //         "assets/images/star3.png",
                    //         width: 47.w,
                    //         fit: BoxFit.cover,
                    //       ),
                    //       Image.asset(
                    //         "assets/images/star3.png",
                    //         width: 47.w,
                    //         fit: BoxFit.cover,
                    //       ),
                    //       Image.asset(
                    //         "assets/images/star3.png",
                    //         width: 47.w,
                    //         fit: BoxFit.cover,
                    //       ),
                    //       Image.asset(
                    //         "assets/images/star3.png",
                    //         width: 47.w,
                    //         fit: BoxFit.cover,
                    //       ),
                    //       Image.asset(
                    //         "assets/images/emptystar.png",
                    //         width: 47.w,
                    //         fit: BoxFit.cover,
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // 20.verticalSpace,
                    RichText(
                      text: TextSpan(
                        text: "4.5",
                        style: TextStyle(
                          fontSize: 80.sp,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w700,
                        ),
                        children: [
                          TextSpan(
                            text: "/5",
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    20.verticalSpace,
                    Text(
                      "Overall Rating",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    20.verticalSpace,
                    Container(
                      width: 390.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListView.builder(
                        itemCount: 5,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final List<double> values = [
                            0.5,
                            0.8,
                            0.9,
                            0.10,
                            0.12
                          ];
                          final List<int> numbers = [5, 4, 3, 2, 1];
                          final List<Color> colors = [
                            Color(0xff007AB1),
                            Color(0xff29B6F6),
                            Color(0xff92C83E),
                            Color(0xffF48576E),
                            Color(0xffFE5858),
                          ];

                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                numbers[index].toString(),
                                style: TextStyle(
                                  fontSize: 16.0.sp,
                                  color: Color(0xff1A1A1A),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: colors[index],
                                ),
                                width: 313.0.w,
                                height: 8.0.h,
                                child: LinearProgressIndicator(
                                  borderRadius: BorderRadius.circular(10),
                                  backgroundColor: Colors.grey,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    colors[index],
                                  ),
                                  value: values[index],
                                ),
                              ),
                              Text(
                                "${(values[index] * 100).toStringAsFixed(0)}",
                                style: TextStyle(
                                  fontSize: 16.0.sp,
                                  color: Color(0xff1A1A1A),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    50.verticalSpace,
                  ],
                ),
              ),
            );
          },
        );
      },
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 100.w,
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/star3.png",
                          width: 15.w,
                          height: 15.h,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "4.5 Rating",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff000000),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
