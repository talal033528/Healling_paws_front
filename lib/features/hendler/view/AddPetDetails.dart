import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/getstarted/view/hendleradddogdatails.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/getstarted/widgets/textfied.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:provider/provider.dart';

class AddPetDetails extends StatelessWidget {
  const AddPetDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
    return Scaffold(
      backgroundColor: Color(0xffF4F6FA),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Custombutton(
            buttonText: "Save",
            onPressed: () {
              controller.goTohendler_ManageProfile();
            }),
      ),
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
          "Add Pet Details",
          style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
              color: Color(0xff223850)),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.verticalSpace,
              SizedBox(
                width: 390.w,
                child: AuthTextField(
                  labeltext: 'Pet Name',
                  hinttext: 'Lorem ipsum',
                  suffixImagePath: '', // Provide the image path
                  showsuffixicon: false,
                  controller:
                      TextEditingController(), // You can provide your TextEditingController
                  obsecure:
                      false, // Set this to true if you want to obscure the text (e.g., for passwords)
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 390.w,
                child: MyDropdownWidget(
                  options: const ["Pet Category", "Lorem ipsum"],
                  selectedValue: "Pet Category",
                  onChanged: (value) {},
                ),
              ),
              10.verticalSpace,
              Container(
                width: 390.w,
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
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Color(0xff8F9DB2)),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10), // Add padding as needed
                  child: TextFormField(
                    maxLines: 8,
                    decoration: InputDecoration(
                      hintText: 'Description', // Add your hint text here
                      border:
                          InputBorder.none, // Remove the default input border
                    ),
                  ),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 390.w,
                child: AuthTextField(
                  labeltext: 'Price Per Hours',
                  hinttext: '\$10.00 / hr',
                  suffixImagePath: '', // Provide the image path
                  showsuffixicon: false,
                  controller:
                      TextEditingController(), // You can provide your TextEditingController
                  obsecure:
                      false, // Set this to true if you want to obscure the text (e.g., for passwords)
                ),
              ),
              30.verticalSpace,
              SizedBox(
                width: 390.w,
                child: RichText(
                  text: TextSpan(
                    text: 'Add Images',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Color(0xff223850),
                      fontWeight: FontWeight.w800,
                    ),
                    children: [
                      // TextSpan(
                      //   text: '   ',
                      //   style: TextStyle(
                      //     fontSize: 12.sp,
                      //     color: Color(0xff223850).withOpacity(0.5),
                      //     fontWeight: FontWeight.w800,
                      //   ),
                      // ),
                      // TextSpan(
                      //   text: '(Optional)',
                      //   style: TextStyle(
                      //     fontSize: 12.sp,
                      //     color: Color(0xff223850).withOpacity(0.5),
                      //     fontWeight: FontWeight.w800,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imagecard(),
                    imagecard(),
                    DottedBorder(
                      strokeWidth: 1,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15)),
                          width: 122.w,
                          height: 121.h,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/add.svg",
                                  width: 19.w,
                                  height: 19.h,
                                ),
                                5.verticalSpace,
                                Text(
                                  "Add More",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Color(0xff007AB1),
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              30.verticalSpace,
              SizedBox(
                width: 390.w,
                child: RichText(
                  text: TextSpan(
                    text: 'Add Certificate',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: Color(0xff223850),
                      fontWeight: FontWeight.w800,
                    ),
                    children: [
                      TextSpan(
                        text: '   ',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xff223850).withOpacity(0.5),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: '(Optional)',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Color(0xff223850).withOpacity(0.5),
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              10.verticalSpace,
              SizedBox(
                width: 390.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 122.w,
                      height: 121.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/AddCertificate.png"),
                              fit: BoxFit.cover)),
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.topRight,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/cancel.svg",
                            width: 24.w,
                            height: 24.h,
                          ),
                        ],
                      ),
                    ),
                    DottedBorder(
                      radius: Radius.circular(15),
                      strokeWidth: 1,
                      child: Container(
                          // decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(15)),
                          width: 122.w,
                          height: 121.h,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/add.svg",
                                  width: 19.w,
                                  height: 19.h,
                                ),
                                5.verticalSpace,
                                Text(
                                  "Add More",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      color: Color(0xff007AB1),
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          )),
                    ),
                    Container(
                      width: 122.w,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
