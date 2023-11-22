import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/features/user/widgets/discoverwidgetcard.dart';
import 'package:provider/provider.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<UserNavigationViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          "Search Results",
          style: TextStyle(
              fontSize: 16.sp,
              color: const Color(0xff0000000),
              fontWeight: FontWeight.w700),
        ),
      ),
      body: SizedBox(
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
                  itemBuilder: (context, index) {
                    List<String> imageChangePaths = [
                      'assets/images/img1.png',
                      'assets/images/img2.png',
                      'assets/images/img3.png',
                    ];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: GestureDetector(
                        onTap: () {
                          controller.goToPawsService();
                        },
                        child: DiscoverCard(
                          text: 'ABC Paws Service',
                          name: '10 Pets',
                          image:
                              imageChangePaths[index % imageChangePaths.length],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
