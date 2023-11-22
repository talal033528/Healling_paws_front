import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/hendler/widgets/calenderseach.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:provider/provider.dart';

class user_chat extends StatelessWidget {
  const user_chat({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final controller = context.watch<UserNavigationViewModel>();
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            print("ss");
            // scaffoldKey.currentState?.openDrawer();
            Scaffold.of(context).openDrawer();
          },
          child: const Icon(Icons.menu, color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Chat",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w600),
        ),

        // Image.asset(
        //   "assets/images/title.png",
        //   width: 152.w,
        //   height: 22.h,
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                controller.goTonotification();
              },
              child: Image.asset(
                "assets/images/notificationbell.png",
                width: 21.w,
                height: 22.h,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              10.verticalSpace,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF9C9C9C), // Shadow color
                      blurRadius: 5.0,
                      spreadRadius: 0.0,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                width: 390.w,
                height: 55.h,
                child: TextFormField(
                  // controller: controller,
                  // obscureText: obsecure,
                  style: TextStyle(color: Color(0xFf9BA8BB), fontSize: 14),
                  decoration: InputDecoration(
                    hintText: "Search here",
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        "assets/images/search1.png",
                        width: 15.w,
                        height: 15.h,
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle:
                        const TextStyle(fontSize: 14, color: Color(0xFf9BA8BB)),
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
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 14), // Adjust the padding as needed
                  ),
                  maxLines: 1,
                ),
              ),

              // SizedBox(
              //   width: 390.w,
              //   child: CalendarTextField(
              //     hinttext: "Search by date",
              //   ),
              // ),

              20.verticalSpace,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: ListView.builder(
                  shrinkWrap: true,

                  itemCount:
                      4, // Change this to the number of containers you want
                  itemBuilder: (BuildContext context, int index) {
                    String imagePath = "";

                    if (index == 0) {
                      imagePath = "assets/images/chatimg.png";
                    } else if (index == 1) {
                      imagePath = "assets/images/chatimg1.png";
                    } else if (index == 2) {
                      imagePath = "assets/images/chatimg.png";
                    } else if (index == 3) {
                      imagePath = "assets/images/chatimg1.png";
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
                        child: GestureDetector(
                          onTap: () {
                            controller.goTochattingscreen();
                          },
                          child: Container(
                              width: 390.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xFF9C9C9C), // Shadow color
                                    blurRadius: 4.0,
                                    spreadRadius: 0.1,
                                    offset: Offset(0, 2.0),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  leading: Image.asset(
                                    imagePath,
                                    width: 67.w,
                                    height: 67.h,
                                  ),
                                  title: Text(
                                    "ABC Paws Service",
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w900,
                                        color: Color(0xff223850)),
                                  ),
                                  subtitle: Text(
                                    "Lorem ipsum dolor sit amet consectetur adipiscing elit odio...",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff223850)),
                                  ),
                                ),
                              )),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
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
        title: Text("Delete",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.sp,
                fontWeight: FontWeight.bold)),
        content: Text(
          "Are you sure you want to delete this chat?",
          textAlign: TextAlign.center,
          style: TextStyle(color: Color(0xff03384C), fontSize: 16.sp),
        ),
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop(false);
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
                      "Cancel",
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
                  Navigator.of(context).pop(true);
                },
                child: Container(
                  width: 130.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xff29B6F6), Color(0xff007AB1)],
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(26.r))),
                  child: Center(
                    child: Text(
                      "Delete",
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
