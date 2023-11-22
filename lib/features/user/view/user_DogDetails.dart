import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/user/widgets/RatingModalWidget.dart';
import 'package:healing_paws/features/user/widgets/ReviewButton.dart';

class user_DogDetails extends StatelessWidget {
  const user_DogDetails({super.key});

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
          "Dog Details",
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
                      RatingModalWidget(),
                      ReviewButton(),
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
