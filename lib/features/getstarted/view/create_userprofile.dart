import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/customt_textfiled.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/getstarted/widgets/textfied.dart';
import 'package:healing_paws/features/hendler/widgets/calenderseach.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class usercreateprofile extends StatefulWidget {
  const usercreateprofile({super.key});

  @override
  State<usercreateprofile> createState() => _usercreateprofileState();
}

// ignore: camel_case_types
class _usercreateprofileState extends State<usercreateprofile> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();

    return Scaffold(
      backgroundColor: const Color(0xffF4F6FA),
      // extendBody: true,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xffF4F6FA),
        elevation: 0,
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
          "Create Profile",
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xff223850)),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Custombutton(
          buttonText: "Continue",
          onPressed: () {
            controller.goTouser_main();
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              // 20.verticalSpace,
              Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 150.w,
                      // height: 150.h,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: Colors.white)),
                      child: ClipRRect(
                        child: Image.asset(
                          "assets/images/profile.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 5,
                        right: 5,
                        child: Container(
                            width: 35.w,
                            height: 35.h,
                            decoration: const BoxDecoration(
                                color: Color(0xff223850),
                                shape: BoxShape.circle),
                            child: const Center(
                                child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 15,
                            ))))
                  ]),
              16.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 185.w,
                      child: AuthTextField(
                        labeltext: 'First Name',
                        hinttext: 'Sara',
                        suffixImagePath: '', // Provide the image path
                        showsuffixicon: false,
                        controller:
                            TextEditingController(), // You can provide your TextEditingController
                        obsecure:
                            false, // Set this to true if you want to obscure the text (e.g., for passwords)
                      ),
                    ),
                    SizedBox(
                        width: 185.w,
                        child: AuthTextField(
                          labeltext: 'Last Name',
                          hinttext: 'William',
                          suffixImagePath: '', // Provide the image path
                          showsuffixicon: false,
                          controller:
                              TextEditingController(), // You can provide your TextEditingController
                          obsecure:
                              false, // Set this to true if you want to obscure the text (e.g., for passwords)
                        )),
                  ],
                ),
              ),
              16.verticalSpace,
              SizedBox(
                  width: 390.w,
                  child: CalendarTextField(
                    hinttext: "September 25, 1996",
                  )

                  // CustomTextFieldwithicon(
                  //   hintText: 'Date of Birth',
                  //   suffixIcon: Icons
                  //       .calendar_month, // Provide the IconData for the suffix icon
                  // )
                  ),
              16.verticalSpace,
              SizedBox(
                width: 390.w,
                child: MyDropdownWidget(
                  options: const ["Female", "Male"],
                  selectedValue: "Female",
                  onChanged: (value) {},
                ),
              ),
              16.verticalSpace,
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

              // SizedBox(
              //   width: 390.w,
              //   child: TextField(
              //     style: const TextStyle(
              //       color: Color(0xff9C9C9C),
              //       fontSize: 14,
              //       fontWeight: FontWeight.normal,
              //     ),
              //     decoration: InputDecoration(
              //       contentPadding: const EdgeInsets.symmetric(
              //         vertical: 12.0,
              //         horizontal: 16.0,
              //       ),
              //       hintText: "About yourself",
              //       hintStyle: const TextStyle(
              //         color: Color(0xff9C9C9C),
              //         fontSize: 14,
              //         fontWeight: FontWeight.normal,
              //       ),
              //       filled: true,
              //       fillColor: Colors.white, // Background color
              //       border: const OutlineInputBorder(
              //         borderSide: BorderSide(color: Color(0xffDBE2EC)),
              //       ),
              //       enabledBorder: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(26.r),
              //         borderSide: const BorderSide(
              //           color: Color(0xffDBE2EC),
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
              //     maxLines: 4,
              //   ),
              // ),
              16.verticalSpace,
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
                  )),
              16.verticalSpace,
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
              25.verticalSpace,
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
            ],
          ),
        ),
      ),
    );
  }
}
