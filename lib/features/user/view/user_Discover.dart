import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/getstarted/widgets/botton.dart';
import 'package:healing_paws/features/getstarted/widgets/dropdown.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/view/user_home.dart';
import 'package:healing_paws/features/user/widgets/discoverwidgetcard.dart';
import 'package:provider/provider.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<UserNavigationViewModel>();
    return Scaffold(
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
          "Discover",
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
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            20.verticalSpace,
            Stack(
              children: [
                SizedBox(
                  width: 390.w,
                  child: TextField(
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0XFF0ffffff),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      prefixIcon: Icon(
                        Icons.search,
                        color: const Color(0xff000000),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.only(
                            right: 10, top: 10, left: 10, bottom: 10),
                        child: Image.asset(
                          "assets/images/suffix.png",
                          width: 32.w,
                          height: 31.h,
                        ),
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                        color: const Color(0xff000000).withOpacity(0.7),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Color(0xf9BA8BB)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide(color: Color(0xf9BA8BB)),
                      ),
                    ),
                  ),
                ),
                Positioned.fill(
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        // Show a bottom sheet when the search bar is tapped
                        showModalBottomSheet(
                          backgroundColor: Colors.white,
                          context: context,
                          builder: (context) {
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 2, color: Color(0xffA7C4D1)),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      topRight: Radius.circular(25))),
                              child: Scaffold(
                                backgroundColor: Colors.transparent,
                                bottomNavigationBar: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 10),
                                  child: SizedBox(
                                    width: 348.w,
                                    child: Custombutton(
                                      buttonText: "Apply",
                                      onPressed: () {
                                        controller.goTodiscoversearchresults();
                                      },
                                    ),
                                  ),
                                ),
                                body: Container(
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Container(
                                                width: 70.w,
                                                height: 55.h,
                                                decoration: BoxDecoration(
                                                  borderRadius: const BorderRadius
                                                      .only(
                                                      topRight:
                                                          Radius.circular(25),
                                                      // topLeft: Radius.circular(5),
                                                      bottomLeft:
                                                          Radius.circular(20)),
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.4),
                                                      spreadRadius: -0.1,
                                                      blurRadius: 13,
                                                      offset:
                                                          const Offset(0, 3),
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
                                          options: const [
                                            "Pet Category",
                                            "Lorem ipsum"
                                          ],
                                          selectedValue: "Pet Category",
                                          onChanged: (value) {},
                                        ),
                                      ),
                                      16.verticalSpace,
                                      SizedBox(
                                        width: 390.w,
                                        child: MyDropdownWidget(
                                          options: const [
                                            "City",
                                            "Gainesville"
                                          ],
                                          selectedValue: "City",
                                          onChanged: (value) {},
                                        ),
                                      ),
                                      16.verticalSpace,
                                      DistanceForm(),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            20.verticalSpace,
            SizedBox(
              width: 390.w,
              child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: GestureDetector(
                          onTap: () {
                            controller.goTouser_DogDetails();
                          },
                          child: DiscoverCard(
                            text: 'Dog Name Abc',
                            name: 'ABC Paws Service',
                            image: 'assets/images/dog1.png',
                          )),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
