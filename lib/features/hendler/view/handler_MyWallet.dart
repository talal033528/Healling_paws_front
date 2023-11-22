import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/hendler/widgets/mywalletcard.dart';
import 'package:provider/provider.dart';

class hendler_mywallet extends StatelessWidget {
  const hendler_mywallet({super.key});

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
          "My Wallet",
          style: TextStyle(
              fontSize: 16.sp,
              color: Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            20.verticalSpace,
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
                        fontSize: 20.sp,
                        color: Color(0xff000000),
                        fontWeight: FontWeight.w900),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      controller.goTohandler_salectbank();
                    },
                    child: Container(
                      width: 108.w,
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff007AB1),
                            Color(0xff007AB1),
                            Color(0xff29B6F6)
                          ],
                        ),
                      ),
                      child: Center(
                          child: Text(
                        "Withdraw",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w900),
                      )),
                    ),
                  ),
                ),
              ),
            ),
            20.verticalSpace,
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  List<String> imageChangePaths = [
                    'assets/images/banglogo.png',
                    'assets/images/banklogo2.png',
                    'assets/images/banklogo3.png',
                  ];
                  return GestureDetector(
                      onTap: () {
                        // controller.goToPawsService();
                      },
                      child: handlermywalletcard(
                        image:
                            imageChangePaths[index % imageChangePaths.length],
                      ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
