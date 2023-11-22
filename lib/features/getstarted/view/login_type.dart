import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:provider/provider.dart';

class LoginTypeSelect extends StatelessWidget {
  const LoginTypeSelect({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GetStartedViewModel>();
    return Scaffold(
      backgroundColor: Color(0xffF4F6FA),
      appBar: AppBar(
        backgroundColor: Color(0xffF4F6FA),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Pre Login",
          style: TextStyle(fontSize: 16.sp, color: Color(0xff223850)),
        ),
        centerTitle: true,
      ),
      // bottomNavigationBar: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [

      //       ],
      //     )),

      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.1,
        child: Column(
          children: [
            50.verticalSpace,
            SvgPicture.asset(
              "assets/icons/getstart.svg",
              width: 153.w,
              height: 151.h,
            ),
            100.verticalSpace,
            btnGradient(
                gradientColors: [Color(0xff223850), Color(0xff223850)],
                buttonText: "Sign-In with Email Address",
                iconPath: "assets/icons/email1.svg",
                onPressed: () {
                  print("Sign-in with Email Address");

                  controller.goTologinwithemail();
                }),
            30.verticalSpace,
            btnGradient(
                gradientColors: [Color(0xff92C83E), Color(0xff92C83E)],
                buttonText: "Sign-in with Phone Number",
                iconPath: "assets/icons/1.svg",
                onPressed: () {
                  print("Sign-In with Phone Number");
                  controller.goToLogin();
                }),
            30.verticalSpace,
            btnGradient(
                gradientColors: [Color(0xff2C55B8), Color(0xff2C55B8)],
                buttonText: "Sign-in with Facebook",
                iconPath: "assets/icons/f.svg",
                onPressed: () {
                  print("Sign-in with Facebook");
                  controller.goToUserTypeScreen();
                }),
            30.verticalSpace,
            btnGradient(
                gradientColors: [Color(0xff000000), Color(0xff000000)],
                buttonText: "Login with Apple",
                iconPath: "assets/icons/apple1.svg",
                onPressed: () {
                  print("Login with Apple");
                  controller.goToUserTypeScreen();
                }),
            30.verticalSpace,
            btnGradient(
                gradientColors: [Color(0xffEB4335), Color(0xffEB4335)],
                buttonText: "Sign-in with Google",
                iconPath: "assets/icons/g.svg",
                onPressed: () {
                  print("Sign-in with Google");
                  controller.goToUserTypeScreen();
                }),
            const Spacer(),
            // GestureDetector(
            //   onTap: () {
            //     controller.goToSignup();
            //   },
            //   child: RichText(
            //       text: const TextSpan(
            //     style: TextStyle(
            //       fontSize: 14.0,
            //       color: Colors.black,
            //     ),
            //     children: <TextSpan>[
            //       TextSpan(text: "Don't have an account? "),
            //       TextSpan(
            //           text: 'Signup',
            //           style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               color: Color(0xffFFFFFF))),
            //     ],
            //   )),
            // ),
            GestureDetector(
              onTap: () {
                controller.gotoPrivacyPolicy();
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.5, // Adjust the opacity level as needed
                    child: Text(
                      "By sign-in, you agree to our",
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                  ),
                  Opacity(
                    opacity: 0.5, // Adjust the opacity level as needed
                    child: Text(
                      " Terms & Conditions | Privacy Policy",
                      style: TextStyle(fontSize: 14.sp, color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';

// import 'package:provider/provider.dart';

// class PreLoginScreen extends StatefulWidget {
//   const PreLoginScreen({super.key});

//   @override
//   State<PreLoginScreen> createState() => _PreLoginScreenState();
// }

// class _PreLoginScreenState extends State<PreLoginScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final controller = context.watch<GetStartedViewModel>();
//     return Scaffold(
//         extendBody: true,
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           automaticallyImplyLeading: false,
//           elevation: 0,
//           backgroundColor: Colors.transparent,
//           title: const Text(
//             "Pre Login",
//             style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
//           ),
//           centerTitle: true,
//         ),
//         body: Container(
//             height: MediaQuery.of(context).size.height / 0.0,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(30),
//                 topRight: Radius.circular(30),
//               ),
//             ),
//             child: Column(
//               children: [
//                 80.verticalSpace,
//                 SvgPicture.asset(
//                   "assets/icons/getstart.svg",
//                   width: 269.71,
//                   height: 120,
//                 ),
//                 92.verticalSpace,
//                 btnGradient(
//                     gradientColors: [Color(0xff223850), Color(0xff223850)],
//                     buttonText: "Sign-In with Email Address",
//                     iconPath: "assets/icons/email1.svg",
//                     onPressed: () {
//                       print("Sign-in with Email Address");

//                       controller.goTologinwithemail();
//                     }),
//                 30.verticalSpace,
//                 btnGradient(
//                     gradientColors: [Color(0xff92C83E), Color(0xff92C83E)],
//                     buttonText: "Sign-in with Phone Number",
//                     iconPath: "assets/icons/1.svg",
//                     onPressed: () {
//                       print("Sign-In with Phone Number");
//                       controller.goToLogin();
//                     }),
//                 30.verticalSpace,
//                 btnGradient(
//                     gradientColors: [Color(0xff2C55B8), Color(0xff2C55B8)],
//                     buttonText: "Sign-in with Facebook",
//                     iconPath: "assets/icons/f.svg",
//                     onPressed: () {
//                       print("Sign-in with Facebook");
//                       controller.goToUserTypeScreen();
//                     }),
//                 30.verticalSpace,
//                 btnGradient(
//                     gradientColors: [Color(0xff000000), Color(0xff000000)],
//                     buttonText: "Login with Apple",
//                     iconPath: "assets/icons/apple1.svg",
//                     onPressed: () {
//                       print("Login with Apple");
//                       controller.goToUserTypeScreen();
//                     }),
//                 30.verticalSpace,
//                 btnGradient(
//                     gradientColors: [Color(0xffEB4335), Color(0xffEB4335)],
//                     buttonText: "Sign-in with Google",
//                     iconPath: "assets/icons/g.svg",
//                     onPressed: () {
//                       print("Sign-in with Google");
//                       controller.goToUserTypeScreen();
//                     }),
//                 const Spacer(),
//                 80.verticalSpace,
//                 const Text(
//                   "By sign-in, you agree to our",
//                   style: TextStyle(
//                     fontSize: 14,
//                     color: Color(0xff48576E),
//                   ),
//                 ),
//                 5.verticalSpace,
//                 GestureDetector(
//                   onTap: () {
//                     // controller.goToTermsAndConditions();
//                   },
//                   child: RichText(
//                       text: const TextSpan(
//                     style: TextStyle(
//                       fontSize: 14.0,
//                       color: Colors.black,
//                     ),
//                     children: <TextSpan>[
//                       TextSpan(
//                         text: "Terms & Conditions |  ",
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xff48576E),
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'Privacy Policy',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xff48576E),
//                         ),
//                       ),
//                     ],
//                   )),
//                 ),
//                 50.verticalSpace,
//               ],
//             )));
//   }
// }

// Widget btnGradient({
//   required List<Color> gradientColors,
//   required String buttonText,
//   required String iconPath,
//   required VoidCallback onPressed,
// }) {
//   return GestureDetector(
//     onTap: onPressed,
//     child: Container(
//       width: 350.w,
//       height: 56.h,
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.centerLeft,
//             end: Alignment.centerRight,
//             colors: gradientColors,
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(26.r))),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SvgPicture.asset(
//             iconPath,
//             width: 24.w,
//             height: 24.h,
//           ),
//           15.horizontalSpace,
//           Text(
//             buttonText,
//             style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.normal,
//                 fontSize: 16.sp),
//           )
//         ],
//       ),
//     ),
//   );
// }
Widget btnGradient({
  required List<Color> gradientColors,
  required String buttonText,
  required String iconPath,
  required VoidCallback onPressed,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      width: 350.w,
      height: 52.h,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFF9C9C9C), // Shadow color
              blurRadius: 12.0,
              spreadRadius: 2.0,
              offset: Offset(0, 8),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: gradientColors,
          ),
          borderRadius: BorderRadius.all(Radius.circular(26.r))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          5.horizontalSpace,
          SizedBox(
            width: 50,
            child: SvgPicture.asset(
              iconPath,
            ),
          ),
          SizedBox(
            width: 260.w,
            child: Text(
              buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 16.sp),
            ),
          )
        ],
      ),
    ),
  );
}
