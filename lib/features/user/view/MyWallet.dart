import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healing_paws/features/user/widgets/bookingcardwidget.dart';
import 'package:healing_paws/features/user/widgets/mywalletcard.dart';

class MyWallet extends StatefulWidget {
  const MyWallet({super.key});

  @override
  State<MyWallet> createState() => _MyWalletState();
}

class _MyWalletState extends State<MyWallet>
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
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "My Wallet",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              20.verticalSpace,
              Container(
                width: 390.w,
                height: 100.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(0xffDDE2E8)),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Image.asset("assets/images/YourBalance.png"),
                    title: Text(
                      "Your Balance",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff000000).withOpacity(0.6)),
                    ),
                    subtitle: Text(
                      "\$15,658.36",
                      style: TextStyle(
                          fontSize: 24.sp,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              20.verticalSpace,
              Container(
                width: 390.w,
                height: 2,
                color: Color(0xffF4F6FA),
              ),
              10.verticalSpace,
              TabBar(
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
                      color:
                          changecolor ? Color(0xff29B6F6) : Color(0xff223850),
                    ),
                    child: Tab(
                      child: Text(
                        "Debit",
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
                      color:
                          changecolor ? Color(0xff223850) : Color(0xff29B6F6),
                    ),
                    child: Tab(
                      child: Text(
                        "Refunds",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              Container(
                width: double.infinity.w,
                height: 1000,
                child: TabBarView(
                  controller: tabController,
                  children: [
                    SizedBox(
                      width: 390.w,
                      child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                // controller.goT0BookingDetails();
                              },
                              child: mywalletcard(
                                text: 'Debit',
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      width: 390.w,
                      child: ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                // controller.goT0BookingDetails();
                              },
                              child: mywalletcard(
                                text: 'Refunds',
                              ),
                            );
                          }),
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
