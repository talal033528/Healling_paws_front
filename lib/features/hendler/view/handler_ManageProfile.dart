import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/widgets/mypetcard.dart';
import 'package:healing_paws/features/hendler/widgets/ratingwitoutstars.dart';
import 'package:healing_paws/features/user/view/PawsService.dart';
import 'package:healing_paws/features/user/widgets/RatingModalWidget.dart';
import 'package:provider/provider.dart';

class hendler_ManageProfile extends StatefulWidget {
  const hendler_ManageProfile({super.key});

  @override
  State<hendler_ManageProfile> createState() => _hendler_ManageProfileState();
}

class _hendler_ManageProfileState extends State<hendler_ManageProfile>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool changecolor = false;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);

    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        setState(() {
          changecolor = !changecolor;
        });
      }
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<hendlerNavigationViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "Manage Profile",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
        bottom: TabBar(
          controller: tabController,
          dividerColor: Colors.transparent,
          indicator: null,
          indicatorColor: Colors.transparent,
          // unselectedLabelColor: Color(0xff223850),
          // labelColor: Color(0xff48576E),
          tabs: [
            Container(
              width: 186.w,
              decoration: BoxDecoration(
                // border: Border.all(
                //   color: Color(0xffC49FAE),
                // ),
                borderRadius: BorderRadius.circular(26),
                color: changecolor ? Color(0xff29B6F6) : Color(0xff223850),
              ),
              child: Tab(
                child: Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              width: 186.w,
              decoration: BoxDecoration(
                // border: Border.all(
                //   color: Color(0xffC49FAE),
                // ),
                borderRadius: BorderRadius.circular(26),
                color: changecolor ? Color(0xff223850) : Color(0xff29B6F6),
              ),
              child: Tab(
                child: Text(
                  "My Pets",
                  style: TextStyle(
                      fontSize: 14.sp,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 390.w,
                height: 1000,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    Column(
                      children: [
                        20.verticalSpace,
                        Container(
                          width: 390.w,
                          height: 134.h,
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.only(topLeft: Radius.circular(10)),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  "assets/images/createprofile_bg.png"),
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
                              // Positioned(
                              //   right: 10,
                              //   bottom: 5,
                              //   child: GestureDetector(
                              //     onTap: () {
                              //       // controller.goTouser_editprofile();
                              //     },
                              //     child: Image.asset(
                              //       "assets/images/edit.png",
                              //       width: 20.w,
                              //       height: 20.h,
                              //     ),
                              //   ),
                              // )
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
                              GestureDetector(
                                onTap: () {
                                  controller.goToedit_profile();
                                },
                                child: Image.asset(
                                  "assets/images/edit.png",
                                  width: 20.w,
                                  height: 20.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                        10.verticalSpace,
                        Container(
                            margin: EdgeInsets.only(left: 120),
                            child: RatingModalWithoutstars()),
                        30.verticalSpace,
                        Container(
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
                        Text(
                          maxLines: 4,
                          "Lorem ipsum dolor sit amet consectetur adipiscing elit odio, mattis quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas ",
                          style: TextStyle(
                              fontSize: 14.sp,
                              color: Color(0xff000000).withOpacity(0.5),
                              fontWeight: FontWeight.w400),
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
                        30.verticalSpace,
                        Container(
                          width: 390.w,
                          height: 1.h,
                          color: Color(0xff22385059),
                        ),
                        20.verticalSpace,
                        Container(
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
                        SizedBox(
                            width: 390.w,
                            child:
                                detailscard("Phone Number:", "+1 234 567890")),
                        10.verticalSpace,
                        SizedBox(
                          width: 390.w,
                          child: detailscard(
                              "Email Address:", "sara.william@domain.com"),
                        ),
                        10.verticalSpace,
                        SizedBox(
                          width: 390.w,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        color:
                                            Color(0xff000000).withOpacity(0.3),
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
                                          color: Color(0xff000000)
                                              .withOpacity(0.3),
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
                              ),
                              30.verticalSpace,
                              GestureDetector(
                                onTap: () {
                                  controller.goToviewlocation();
                                },
                                child: Container(
                                  width: 390.w,

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
                                        "assets/images/footmark1.png",
                                        width: 50.w,
                                        height: 50.h,
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
                    Column(
                      children: [
                        22.verticalSpace,
                        SizedBox(
                          width: 390.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.goToAddPetDetails();
                                },
                                child: SizedBox(
                                  width: 100.w,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                              ),

                              // ListView.builder(
                              //     shrinkWrap: true,
                              //     physics: NeverScrollableScrollPhysics(),
                              //     itemBuilder: (context, index) {
                              //       return
                              //     })
                            ],
                          ),
                        ),
                        20.verticalSpace,
                        GestureDetector(
                          onTap: () {
                            controller.goTohendler_dogdetails();
                          },
                          child: SizedBox(
                            child: mypetsdetails(
                              text: 'Dog Name Abc',
                              name:
                                  'Lorem ipsum dolor sit consectetur adipiscing elit odio, quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas',
                              image: 'assets/images/dog2.png',
                            ),
                          ),
                        ),
                        10.verticalSpace,
                        SizedBox(
                          child: mypetsdetails(
                            text: 'Dog Name Abc',
                            name:
                                'Lorem ipsum dolor sit consectetur adipiscing elit odio, quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas',
                            image: 'assets/images/dog2.png',
                          ),
                        ),
                        10.verticalSpace,
                        SizedBox(
                          child: mypetsdetails(
                            text: 'Dog Name Abc',
                            name:
                                'Lorem ipsum dolor sit consectetur adipiscing elit odio, quam tortor taciti aenean luctus nullam enim, praesent ad dapibus tempus natoque a. Rhoncus praesent massa torquent malesuada maecenas arcu curae, porta pulvinar potenti at mus sem, vel purus proin eleifend nisi dictum. Egestas',
                            image: 'assets/images/dog2.png',
                          ),
                        ),
                        10.verticalSpace,
                      ],
                    )
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
