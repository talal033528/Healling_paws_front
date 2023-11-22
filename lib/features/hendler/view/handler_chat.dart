import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/widgets/calenderseach.dart';
import 'package:provider/provider.dart';

class hendler_chat extends StatefulWidget {
  const hendler_chat({super.key});

  @override
  State<hendler_chat> createState() => _hendler_chatState();
}

class _hendler_chatState extends State<hendler_chat> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final GlobalKey<ScaffoldState> _key = GlobalKey();
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(isDrawerOpen ? 40 : 0.0)),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          // automaticallyImplyLeading: false,
          centerTitle: true,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              isDrawerOpen
                  ? IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        setState(() {
                          xOffset = 0;
                          yOffset = 0;
                          scaleFactor = 1;
                          isDrawerOpen = false;
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        setState(() {
                          xOffset = 230;
                          yOffset = 150;
                          scaleFactor = 0.6;
                          isDrawerOpen = true;
                        });
                      }),
            ],
          ),

          // GestureDetector(
          //   onTap: () {
          //     print("ss");
          //     // scaffoldKey.currentState?.openDrawer();
          //     Scaffold.of(context).openDrawer();
          //   },
          //   child: const Icon(Icons.menu, color: Colors.black),
          // ),
          title: Text(
            "Chat",
            style: TextStyle(
                fontSize: 16.sp,
                color: Color(0xff0000000),
                fontWeight: FontWeight.w700),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  controller.goToNotifications();
                },
                child: SvgPicture.asset(
                  "assets/icons/notification1.svg",
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
                SizedBox(
                  width: 390.w,
                  child: CalendarTextField(
                    hinttext: "Search by date",
                  ),
                ),
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
                        imagePath = "assets/images/chatprofile.png";
                      } else if (index == 1) {
                        imagePath = "assets/images/chatprofile.png";
                      } else if (index == 2) {
                        imagePath = "assets/images/chatprofile.png";
                      } else if (index == 3) {
                        imagePath = "assets/images/chatprofile.png";
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
                              controller.goTochatscreen();
                            },
                            child: Container(
                                width: 390.w,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0x333A3A3C)),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: Color(0x19141414),
                                      blurRadius: 20,
                                      offset: Offset(0, 4),
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: ListTile(
                                  leading: Image.asset(
                                    imagePath,
                                    width: 67.w,
                                    height: 67.h,
                                  ),
                                  title: Text(
                                    "Sara William",
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
