import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/customt_textfiled.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/getstarted/widgets/textfied.dart';
import 'package:provider/provider.dart';

class CreateProfile extends StatelessWidget {
  const CreateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();

    return Scaffold(
        backgroundColor: Color(0xffF4F6FA),
        appBar: AppBar(
          backgroundColor: Color(0xffF4F6FA),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Create Business Profile",
            style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xff223850)),
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: 390.w,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Custombutton(
              buttonText: "Continue",
              onPressed: () {
                controller.goToCreateBusinessProfile();
              },
            ),
          ),
        ),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset(
                      "assets/images/createprofile_bg.png",
                      width: double.infinity,
                    ),
                    Positioned(
                      bottom: -60,
                      child: Container(
                        width: 150.w,
                        height: 150.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                          "assets/images/createprofile_img.png",
                        ))),
                      ),
                    ),
                    Positioned(
                      right: 150,
                      bottom: -60,
                      child: Container(
                        width: 44.w,
                        height: 44.h,
                        decoration: BoxDecoration(
                            color: Color(0xff223850),
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1)),
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 20,
                      bottom: 10,
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/camera.svg",
                            width: 17.71,
                            height: 14,
                          ),
                          3.horizontalSpace,
                          Text(
                            "Add Cover",
                            style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white.withOpacity(0.4)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                90.verticalSpace,
                SizedBox(
                  width: 390.w,
                  child: AuthTextField(
                    labeltext: 'Business Name',
                    hinttext: 'ABC Paws Service',
                    suffixImagePath: '', // Provide the image path
                    showsuffixicon: false,
                    controller:
                        TextEditingController(), // You can provide your TextEditingController
                    obsecure:
                        false, // Set this to true if you want to obscure the text (e.g., for passwords)
                  ),
                ),
                15.verticalSpace,
                SizedBox(
                  width: 390.w,
                  child: AuthTextField(
                    labeltext: 'Location',
                    hinttext: '1330 Longview Avenue, Brooklyn',
                    suffixImagePath:
                        'assets/icons/location.svg', // Provide the image path
                    showsuffixicon: true,
                    controller:
                        TextEditingController(), // You can provide your TextEditingController
                    obsecure:
                        false, // Set this to true if you want to obscure the text (e.g., for passwords)
                  ),
                ),
                15.verticalSpace,
                SizedBox(
                  width: 390.w,
                  child: AuthTextField(
                    labeltext: 'Address',
                    hinttext: '22 NW 13th St,',
                    suffixImagePath: '', // Provide the image path
                    showsuffixicon: false,
                    controller:
                        TextEditingController(), // You can provide your TextEditingController
                    obsecure:
                        false, // Set this to true if you want to obscure the text (e.g., for passwords)
                  ),
                ),
                15.verticalSpace,
                SizedBox(
                  width: 390.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 185.w,
                        child: MyDropdownWidget(
                          options: const ["City", "Gainesville"],
                          selectedValue: "City",
                          onChanged: (value) {},
                        ),
                      ),
                      SizedBox(
                        width: 185.w,
                        child: MyDropdownWidget(
                          options: const ["State", "Florida"],
                          selectedValue: "State",
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                15.verticalSpace,
                Container(
                  width: 390.w,
                  height: 55.h,
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
                      borderRadius: BorderRadius.circular(100),
                      border:
                          Border.all(width: 1, color: const Color(0xffDBE2EC))),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "sara.william@domain.com",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff000000)),
                          ),
                          SizedBox(
                            width: 80.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Icon(
                                  Icons.check_circle,
                                  color: Color(0xff92C83E),
                                  size: 16,
                                ),
                                Text(
                                  "Verified",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff000000)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                16.verticalSpace,
                SizedBox(
                  width: 390.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 124.w,
                        height: 55.h,
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
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 1, color: const Color(0xffDBE2EC))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/flag1.png",
                                  width: 13.w, height: 19, fit: BoxFit.cover),
                              Text(
                                "+1",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xff0000000)),
                              ),
                              const Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   width: 86,
                      //   height: 50,
                      //   child:

                      //   TextField(
                      //     decoration: InputDecoration(
                      //       hintText: '+1', // Replace with your desired hint text
                      //       hintStyle: TextStyle(color: Color(0xff000000)),
                      //       suffixIcon: Icon(
                      //         Icons.arrow_drop_down,
                      //         color: Colors.white,
                      //       ),
                      //       enabledBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(26.r),
                      //         borderSide: const BorderSide(
                      //           width: 1,
                      //           color: Color(0xff9C9C9C),
                      //         ),
                      //       ),
                      //       focusedBorder: OutlineInputBorder(
                      //         borderRadius: BorderRadius.circular(26.r),
                      //         borderSide: const BorderSide(
                      //           width: 1,
                      //           color: Color(0xff9C9C9C),
                      //         ),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Container(
                        width: 250.w,
                        height: 55.h,
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
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                width: 1, color: const Color(0xffDBE2EC))),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "234 567890",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff000000)),
                                ),
                                SizedBox(
                                  width: 80.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(
                                        Icons.check_circle,
                                        color: Color(0xff92C83E),
                                        size: 16,
                                      ),
                                      Text(
                                        "Verified",
                                        style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w700,
                                            color: const Color(0xff000000)),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // 15.verticalSpace,
                // AuthTextField(
                //   labeltext: 'Website',
                //   hinttext: 'www.domain.com',
                //   suffixImagePath: '', // Provide the image path
                //   showsuffixicon: false,
                //   controller:
                //       TextEditingController(), // You can provide your TextEditingController
                //   obsecure:
                //       false, // Set this to true if you want to obscure the text (e.g., for passwords)
                // ),
                15.verticalSpace,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFF9C9C9C), // Shadow color
                        blurRadius: 4.0,
                        spreadRadius: 0.1,
                        offset: Offset(0, 2.0),
                      ),
                    ],
                  ),
                  width: 390.w,
                  child: TextFormField(
                    maxLines: 6, // Maximum lines for text input
                    decoration: InputDecoration(
                      hintText: 'Enter your text here', filled: true,
                      fillColor: Colors.white, // Your hint text
                      contentPadding: EdgeInsets.all(16.0), // Adjust as needed
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffDBE2EC)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffDBE2EC)),
                        borderRadius: BorderRadius.circular(15),
                      ), // Remove the default border
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
