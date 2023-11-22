import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/setting/settingviewmodel/viewmodel.dart';
import 'package:provider/provider.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<SettingViewModel>();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        leading: Container(
            margin: EdgeInsets.only(left: 20),
            width: 45.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  // bottomController.changeBottomIndex(0);
                },
              ),
            )),
        title: Text(
          "Card Details",
          style: TextStyle(
              color: Color(0xff223850),
              fontSize: 18.sp,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Column(
              children: [
                35.verticalSpace,
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: ListView.builder(
                    shrinkWrap: true,

                    itemCount:
                        4, // Change this to the number of containers you want
                    itemBuilder: (BuildContext context, int index) {
                      String imagePath = "";
                      String text = "";

                      if (index == 0) {
                        imagePath = "assets/images/Google Pay.png";
                        text = "Google Pay";
                      } else if (index == 1) {
                        imagePath = "assets/images/ApplePay.png";
                        text = "Apple Pay";
                      } else if (index == 2) {
                        imagePath = "assets/images/Paypal.png";
                        text = "Paypal";
                      } else if (index == 3) {
                        imagePath = "assets/images/Group 2116.png";
                        text = "Group 2116";
                      }
                      return Dismissible(
                        key: UniqueKey(),
                        background: Container(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.delete,
                              color: Color(0xffB71C1C),
                            ),
                          ),
                        ),
                        confirmDismiss: (direction) async {
                          return await _showDeleteConfirmationDialog(context);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 350,
                            height: 52,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFF9C9C9C), // Shadow color
                                  blurRadius: 4.0,
                                  spreadRadius: 0.1,
                                  offset: Offset(0, 2.0),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Color(0xffF4F6FA)),
                              color: Color(0xffffffff),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 50.w,
                                    child: Image.asset(
                                      imagePath,
                                      width: 43.53,
                                      height: 26.08,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 260.w,
                                    child: Text(
                                      text, // Customize the text as needed
                                      style: TextStyle(
                                        color: Color(0xFF03384C),
                                        fontSize: 16,
                                        fontFamily: 'Typold',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                  // Icon(Icons.radio_button_checked)
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                22.verticalSpace,
                SizedBox(
                  width: 360.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller.goTosettingaddcard();
                        },
                        child: SizedBox(
                          width: 100.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/images/add.png",
                                width: 19.w,
                                height: 19.h,
                              ),
                              Text(
                                "Add New",
                                style: TextStyle(
                                    fontSize: 16.sp,
                                    color: Color(0xff48576E),
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future<bool?> _showDeleteConfirmationDialog(context) async {
  return showDialog<bool>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.r),
        ),
        title: Column(
          children: [
            Image.asset(
              "assets/images/delete1.png",
              width: 104.w,
              height: 104.h,
            ),
            10.verticalSpace,
            Text("Delete",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        content: Text(
          "Are you sure you want to delete this Card?",
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xff03384C), fontSize: 16.sp),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(true);
                },
                child: Container(
                  width: 130.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff03384C),
                        width: 2.0,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(26.r))),
                  child: Center(
                    child: Text(
                      "Yes, Delete",
                      style: TextStyle(
                          color: Color(0xff03384C),
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    ),
                  ),
                ),
              ),
              5.horizontalSpace,
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(false);
                },
                child: Container(
                  width: 130.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xff007AB1), Color(0xff29B6F6)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(26.r))),
                  child: Center(
                    child: Text(
                      "No",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      );
    },
  );
}
