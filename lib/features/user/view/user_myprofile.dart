import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:provider/provider.dart';

class user_myprofile extends StatelessWidget {
  const user_myprofile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<UserNavigationViewModel>();
    return Scaffold(
      backgroundColor: Color(0xffF4F6FA),
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "My Profile",
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
            98.verticalSpace,
            Container(
              width: 390.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Color(0xffDDE2E8))),
              child: Column(
                children: [
                  Container(
                    width: 390.w,
                    height: 50.h,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 20,
                          top: -40,
                          child: Container(
                            width: 112.w,
                            height: 112.h,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Color(0xff29B6F6).withOpacity(0.9),
                                    width: 5)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/images/profile.png"),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 10,
                          bottom: 5,
                          child: GestureDetector(
                            onTap: () {
                              controller.goTouser_editprofile();
                            },
                            child: Image.asset(
                              "assets/images/edit.png",
                              width: 20.w,
                              height: 20.h,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  30.verticalSpace,
                  SizedBox(
                    width: 340.w,
                    child: Text(
                      "Sara william",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  30.verticalSpace,
                  myprofiledetailscard("Age:", "22 years old"),
                  10.verticalSpace,
                  myprofiledetailscard("Gender::", "Female"),
                  10.verticalSpace,
                  myprofiledetailscard("Address::", "22 NW 13th St,"),
                  10.verticalSpace,
                  myprofiledetailscard("City::", "Gainesville"),
                  10.verticalSpace,
                  myprofiledetailscard("State::", "Florida"),
                  10.verticalSpace,
                  myprofiledetailscard(
                      "Email Address::", "sara.william@domain.com"),
                  10.verticalSpace,
                  myprofiledetailscard("Phone Number::", "+1 234 567890"),
                  10.verticalSpace,
                  myprofiledetailscard("Location:", ""),
                  30.verticalSpace,
                  GestureDetector(
                    onTap: () {
                      controller.goTouser_location();
                    },
                    child: Container(
                      width: 350.w,
                      height: 177.h,
                      // decoration: BoxDecoration(
                      //     image: DecorationImage(
                      //         image: AssetImage())),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/map.png",
                            fit: BoxFit.cover,
                          ),
                          Image.asset(
                            "assets/images/profile.png",
                            width: 28.w,
                            height: 28.h,
                          ),
                          30.verticalSpace,
                        ],
                      ),
                    ),
                  ),
                  20.verticalSpace,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget myprofiledetailscard(String name, String text) {
  return SizedBox(
    width: 350.w,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xff000000),
                  fontWeight: FontWeight.w600),
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 12.sp,
                  color: Color(0xff000000).withOpacity(0.3),
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
        10.verticalSpace,
        Container(
          width: 350.w,
          height: 1,
          color: Color(0xffDDE2E8),
        )
      ],
    ),
  );
}
