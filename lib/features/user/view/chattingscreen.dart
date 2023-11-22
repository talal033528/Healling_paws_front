import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class chattingscreen extends StatelessWidget {
  const chattingscreen({super.key});

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
          "ABC Paws Service",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF9C9C9C), // Shadow color
                  blurRadius: 4.0,
                  spreadRadius: 0.1,
                  offset: Offset(0, 2.0),
                ),
              ],
              color: Colors.white,
              border: Border.all(color: Color(0xffA7C4D1)),
              borderRadius: BorderRadius.circular(100)),
          width: 390.w,
          child: TextFormField(
            style: TextStyle(color: Color(0xFf9BA8BB), fontSize: 14),
            decoration: InputDecoration(
              labelStyle: TextStyle(color: Color(0xff000000), fontSize: 14.sp),
              hintText: "Type your message here...",
              filled: true,
              fillColor: Colors.white,
              hintStyle:
                  const TextStyle(fontSize: 14, color: Color(0xFf9BA8BB)),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 44.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xff007AB1),
                        Color(0xff007AB1),
                        Color(0xff29B6F6)
                      ],
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/send.png",
                      width: 25,
                      height: 25,
                    ),
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
                        Container(
                          width: 390.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 370.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/service_logo.png",
                                          width: 60.w,
                                          height: 60.h,
                                          fit: BoxFit.cover,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "ABC Paws Service",
                                              style: TextStyle(
                                                  fontSize: 16.sp,
                                                  color: Color(0xff0000000),
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ],
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 250.w,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF9C9C9C), // Shadow color
                                        blurRadius: 4.0,
                                        spreadRadius: 0.1,
                                        offset: Offset(0, 2.0),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xff29B6F6)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet consectetur adipiscing elit tincidunt taciti Dolor sit am.",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Colors.white.withOpacity(0.6),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              5.verticalSpace,
                              SizedBox(
                                width: 250.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "03:35 pm",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff0000000)
                                              .withOpacity(0.3),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        20.verticalSpace,
                        Container(
                          width: 360.w,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 370.w,
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 350.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            "assets/images/profile.png",
                                            width: 60.w,
                                            height: 60.h,
                                            fit: BoxFit.cover,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 250.w,
                                decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xFF9C9C9C), // Shadow color
                                        blurRadius: 4.0,
                                        spreadRadius: 0.1,
                                        offset: Offset(0, 2.0),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(color: Color(0xffDDE2E8)),
                                    color: Color(0xffffffff)),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Lorem ipsum dolor sit amet consectetur adipiscing elit tincidunt taciti Dolor sit am.",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff48576E),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              5.verticalSpace,
                              SizedBox(
                                width: 250.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "03:35 pm",
                                      style: TextStyle(
                                          fontSize: 14.sp,
                                          color: Color(0xff0000000)
                                              .withOpacity(0.3),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              )
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
