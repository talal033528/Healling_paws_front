import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/widgets/discoverwidgetcard.dart';
import 'package:provider/provider.dart';

class discoversearchresults extends StatelessWidget {
  const discoversearchresults({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<UserNavigationViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "Search Results",
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
            Expanded(
              child: SizedBox(
                width: 390.w,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  shrinkWrap: true,
                  // itemCount: 20,
                  itemBuilder: (context, index) {
                    // Define a list of main image paths

                    // Define a list of image paths for the 'imagechange' parameter
                    List<String> imageChangePaths = [
                      'assets/images/cat.png',
                      'assets/images/dog1.png',
                      'assets/images/dog2.png',
                      'assets/images/dog3.png',
                      'assets/images/dog4.png',
                    ];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          controller.goTouser_DogDetails();
                        },
                        child: DiscoverCard(
                          text: 'Dog Name Abc',
                          name: 'ABC Paws Service',
                          image:
                              imageChangePaths[index % imageChangePaths.length],
                        ),
                      ),
                    );

                    // Use the index to alternate between main images and 'imagechange'
                  },
                ),
              ),
            ),
            // SizedBox(
            //   width: 390.w,
            //   child: ListView.builder(
            //       itemCount: 3,
            //       shrinkWrap: true,
            //       itemBuilder: (context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 12),
            //           child: GestureDetector(
            //               onTap: () {
            //                 // controller.goTouser_DogDetails();
            //               },
            //               child: DiscoverCard(
            //                 text: 'ABC Paws Service',
            //                 name: '10 Pets',
            //                 image: 'assets/images/img1.png',
            //               )),
            //         );
            //       }),
            // )
          ],
        ),
      ),
    );
  }
}
