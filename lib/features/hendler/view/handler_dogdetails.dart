import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/widgets/ratingwitoutstars.dart';
import 'package:healing_paws/features/hendler/widgets/riviewswithtextfiled.dart';
import 'package:healing_paws/features/user/widgets/RatingModalWidget.dart';
import 'package:healing_paws/features/user/widgets/ReviewButton.dart';
import 'package:provider/provider.dart';

class hendler_dogdetails extends StatelessWidget {
  const hendler_dogdetails({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
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
          "Dog Details",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                      height: 200.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(10))),
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
                          20.verticalSpace,
                          SizedBox(
                            width: 350.w,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 40.w,
                                  child: Image.asset(
                                    "assets/images/edit.png",
                                    width: 20.w,
                                    height: 20.h,
                                  ),
                                ),
                                Text(
                                  "Edit Profile",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Color(0xff000000),
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ),
                          10.verticalSpace,
                          Container(
                            width: double.infinity,
                            height: 1.w,
                            color: Color(0xffA7C4D1),
                          ),
                          10.verticalSpace,
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.white,
                                    title: Image.asset(
                                      "assets/images/delete1.png",
                                      width: 104.w,
                                      height: 104.h,
                                    ),
                                    content: Container(
                                      width: 390.w,
                                      height: 200.h,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Delete!",
                                            style: TextStyle(
                                                fontSize: 30.sp,
                                                color: Color(0xff0000000),
                                                fontWeight: FontWeight.w900),
                                          ),
                                          10.verticalSpace,
                                          RichText(
                                            textAlign: TextAlign.center,
                                            text: TextSpan(
                                              text:
                                                  'Your booking has been confirmed',
                                              style: TextStyle(
                                                fontSize: 16.sp,
                                                color: Color(0xff48576E),
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          30.verticalSpace,
                                          SizedBox(
                                            width: 350.w,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    controller
                                                        .goTohendler_main();
                                                    bottomController
                                                        .changeBottomIndex(0);
                                                  },
                                                  child: Container(
                                                    width: 130.w,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(
                                                                0xFF9C9C9C), // Shadow color
                                                            blurRadius: 4.0,
                                                            spreadRadius: 0.1,
                                                            offset:
                                                                Offset(0, 2.0),
                                                          ),
                                                        ],
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        border: Border.all(
                                                            color: Color(
                                                                0xffDDE2E8))),
                                                    child: Center(
                                                      child: Text(
                                                        "Yes, Delete",
                                                        style: TextStyle(
                                                            fontSize: 14.sp,
                                                            color: Color(
                                                                0xff000000),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    controller
                                                        .goTohendler_dogdetails();
                                                    // bottomController.changeBottomIndex(0);
                                                  },
                                                  child: Container(
                                                    width: 130.w,
                                                    height: 35,
                                                    decoration: BoxDecoration(
                                                        gradient:
                                                            const LinearGradient(
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .centerRight,
                                                          colors: [
                                                            Color(0xff007AB1),
                                                            Color(0xff007AB1),
                                                            Color(0xff29B6F6)
                                                          ],
                                                        ),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Color(
                                                                0xFF9C9C9C), // Shadow color
                                                            blurRadius: 4.0,
                                                            spreadRadius: 0.1,
                                                            offset:
                                                                Offset(0, 2.0),
                                                          ),
                                                        ],
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(100),
                                                        border: Border.all(
                                                            color: Color(
                                                                0xffDDE2E8))),
                                                    child: Center(
                                                      child: Text(
                                                        "No",
                                                        style: TextStyle(
                                                            fontSize: 14.sp,
                                                            color: Color(
                                                                0xffffffff),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: SizedBox(
                              width: 350.w,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 40.w,
                                    child: Icon(
                                      Icons.delete,
                                      color: Color(0xffB71C1C),
                                    ),
                                  ),
                                  Text(
                                    "Delete Profile",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: Color(0xff000000),
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ),
                          ),
                          20.verticalSpace,
                        ],
                      ));
                },
              );
            },
            child: Image.asset(
              "assets/images/3dot.png",
              width: 54.w,
              height: 21.h,
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/images/DogDetails.png"),
                  Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      width: 36.w,
                      height: 36.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Color(0xff85D9FF)),
                          color: Colors.white),
                      child: Center(
                        child: Image.asset(
                          "assets/images/heart.png",
                          width: 20.w,
                          height: 17.h,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              15.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Text(
                  "Dog Name Abc",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w900),
                ),
              ),
              15.verticalSpace,
              SizedBox(
                width: 390.w,
                child: SizedBox(
                  width: 150.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingModalWithoutstars(),
                      ReviewButtonwithtextfiled(),
                      SizedBox(
                        width: 100.w,
                      )
                    ],
                  ),
                ),
              ),
              15.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Text(
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xff0000000).withOpacity(0.6)),
                ),
              ),
              15.verticalSpace,
              Container(
                width: 390.w,
                height: 1,
                color: Color(0xffA7C4D1),
              ),
              15.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: Text(
                        "Pricing/hr:",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xff0000000),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(
                      "\$10.00 / hr",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xff0000000).withOpacity(0.3),
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              15.verticalSpace,
              Container(
                width: 390.w,
                height: 1,
                color: Color(0xffA7C4D1),
              ),
              25.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DogProfileCard(
                      Colors.white, // Icon color
                      "assets/images/pfdog.png", // Image path
                    ),
                    DogProfileCard(
                      Colors.white, // Icon color
                      "assets/images/pfdog.png", // Image path
                    ),
                    DogProfileCard(
                      Colors.transparent, // Icon color
                      "assets/images/pfdog.png", // Image path
                    )
                  ],
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DogProfileCard(
                      Colors.transparent, // Icon color
                      "assets/images/pfdog.png", // Image path
                    ),
                    DogProfileCard(
                      Colors.white, // Icon color
                      "assets/images/pfdog.png", // Image path
                    ),
                    DogProfileCard(
                      Colors.transparent, // Icon color
                      "assets/images/pfdog.png", // Image path
                    )
                  ],
                ),
              ),

              20.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Text(
                  " Certificate",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Color(0xff0000000),
                      fontWeight: FontWeight.w700),
                ),
              ),
              20.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Image.asset("assets/images/Certificate.png"),
              )

              // Container(
              //   width: 120.w,
              //   height: 120.w,
              //   decoration: BoxDecoration(
              //       image: DecorationImage(
              //     image: AssetImage("assets/images/pfdog.png"),
              //   )),
              //   child: Center(
              //       child: Icon(
              //     Icons.play_circle,
              //     color: Colors.white,
              //   )),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

class DogProfileCard extends StatelessWidget {
  final Color iconColor;
  final String chnageimage; // Change the type to String

  DogProfileCard(this.iconColor, this.chnageimage);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      height: 120.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(chnageimage), // Remove the comma here
        ),
      ),
      child: Center(
        child: Icon(
          Icons.play_circle,
          color: iconColor,
        ),
      ),
    );
  }
}
