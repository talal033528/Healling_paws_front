import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/widgets/calenderseach.dart';
import 'package:provider/provider.dart';

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      final controller = context.watch<hendlerNavigationViewModel>();
      return Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Color(0xffA7C4D1)),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SizedBox(
              width: 348.w,
              child: Custombutton(
                buttonText: "Apply",
                onPressed: () {
                  controller.goToMyEarning();
                },
              ),
            ),
          ),
          body: Container(
            width: double.infinity,
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
                          width: 70.w,
                          height: 55.h,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(25),
                                // topLeft: Radius.circular(5),
                                bottomLeft: Radius.circular(20)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: -0.1,
                                blurRadius: 13,
                                offset: const Offset(0, 3),
                              )
                            ],
                          ),
                          child: Icon(
                            Icons.cancel,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
                20.verticalSpace,
                Text(
                  "Search Filter",
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w700),
                ),
                46.verticalSpace,
                SizedBox(
                  width: 390.w,
                  child: MyDropdownWidget(
                    options: const ["Pet Category", "Lorem ipsum"],
                    selectedValue: "Pet Category",
                    onChanged: (value) {},
                  ),
                ),
                16.verticalSpace,
                SizedBox(
                  width: 390.w,
                  child: MyDropdownWidget(
                    options: const ["Search By Client Name", "Gainesville"],
                    selectedValue: "Search By Client Name",
                    onChanged: (value) {},
                  ),
                ),
                16.verticalSpace,
                SizedBox(
                    width: 390.w,
                    child: CalendarTextField(
                      hinttext: "Search By Date",
                    )),
              ],
            ),
          ),
        ),
      );
    },
  );
}
