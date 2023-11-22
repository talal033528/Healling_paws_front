import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/view/user_myprofile.dart';
import 'package:healing_paws/features/user/widgets/RatingModalWidget.dart';
import 'package:healing_paws/features/user/widgets/servicecard.dart';
import 'package:provider/provider.dart';

class PawsService extends StatelessWidget {
  const PawsService({super.key});

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
          "ABC Paws Service",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 134.h,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/createprofile_bg.png"),
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 10,
                      bottom: -70,
                      child: Image.asset(
                        "assets/images/createprofile_img.png",
                        width: 110.w,
                        height: 110.h,
                      ),
                    ),
                  ],
                ),
              ),
              15.verticalSpace,
              Container(
                margin: EdgeInsets.only(left: 100),
                width: 250.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "ABC Paws Service",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
              10.verticalSpace,
              Container(
                  margin: EdgeInsets.only(left: 120),
                  child: RatingModalWidget()),
              19.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.goTochattingscreen();
                      },
                      child: Container(
                        width: 189.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffDDE2E8)),
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "Message",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Color(0xff0000000),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        controller.goToAppointment();
                      },
                      child: Container(
                        width: 189.w,
                        height: 40.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffDDE2E8)),
                          borderRadius: BorderRadius.circular(100),
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
                          child: Text(
                            "Book An Appointment",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              30.verticalSpace,
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 390.w,
                child: Text(
                  "About",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w900),
                ),
              ),
              12.verticalSpace,
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 390.w,
                child: Text(
                  maxLines: 4,
                  "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas ",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xff000000).withOpacity(0.5),
                      fontWeight: FontWeight.w400),
                ),
              ),
              20.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "read more",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff29B6F6)),
                    )
                  ],
                ),
              ),
              20.verticalSpace,
              Container(
                width: 390.w,
                height: 1.h,
                color: Color(0xffDDE2E8),
              ),
              30.verticalSpace,
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 390.w,
                child: Text(
                  "My Pets",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w900),
                ),
              ),
              20.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DogServiceCard(
                      imagePath: "assets/images/servicedog.png",
                    ),
                    DogServiceCard(
                      imagePath: "assets/images/dog3.png",
                    ),
                    DogServiceCard(
                      imagePath: "assets/images/servicedog.png",
                    ),
                  ],
                ),
              ),
              20.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DogServiceCard(
                      imagePath: "assets/images/servicedog.png",
                    ),
                    DogServiceCard(
                      imagePath: "assets/images/dog3.png",
                    ),
                    SizedBox(
                      width: 120.w,
                    )
                  ],
                ),
              ),
              30.verticalSpace,
              Container(
                width: 390.w,
                height: 1.h,
                color: Color(0xffDDE2E8),
              ),
              20.verticalSpace,
              Container(
                margin: EdgeInsets.only(left: 10),
                width: 390.w,
                child: Text(
                  "Contact Details",
                  style: TextStyle(
                      fontSize: 18.sp,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w900),
                ),
              ),
              30.verticalSpace,
              detailscard("Phone Number:", "+1 234 567890"),
              10.verticalSpace,
              detailscard("Email Address:", "sara.william@domain.com"),
              10.verticalSpace,
              SizedBox(
                width: 380.w,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Address",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff000000),
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet",
                          style: TextStyle(
                              fontSize: 16.sp,
                              color: Color(0xff000000).withOpacity(0.3),
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 390.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "New York,NY",
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: Color(0xff000000).withOpacity(0.3),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    10.verticalSpace,
                    Container(
                      width: 390.w,
                      height: 1,
                      color: Color(0xffDDE2E8),
                    )
                  ],
                ),
              ),
              50.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}

Widget detailscard(String name, String text) {
  return SizedBox(
    width: 380.w,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(0xff000000).withOpacity(0.3),
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        10.verticalSpace,
        Container(
          width: 390.w,
          height: 1,
          color: Color(0xffDDE2E8),
        )
      ],
    ),
  );
}
