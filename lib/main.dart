import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healing_paws/features/getstarted/viewmodel/getstarednodel.dart';
import 'package:healing_paws/features/helpers/navigator.dart';
import 'package:healing_paws/features/hendler/handlermodel/analyticsviewmodel.dart';
import 'package:healing_paws/features/hendler/handlermodel/hendlermodels.dart';
import 'package:healing_paws/features/setting/settingviewmodel/viewmodel.dart';
import 'package:healing_paws/features/user/usermodel/usermodel.dart';
import 'package:healing_paws/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider<GetStartedViewModel>(
                create: (_) => GetStartedViewModel(NavigationService.instace)),
            ChangeNotifierProvider<hendlerNavigationViewModel>(
                create: (_) =>
                    hendlerNavigationViewModel(NavigationService.instace)),
            ChangeNotifierProvider<UserNavigationViewModel>(
                create: (_) =>
                    UserNavigationViewModel(NavigationService.instace)),
            ChangeNotifierProvider<SettingViewModel>(
                create: (_) => SettingViewModel(NavigationService.instace)),
            ChangeNotifierProvider<AnalyticsViewModel>(
                create: (_) => AnalyticsViewModel(NavigationService.instace)),
            // // ChangeNotifierProvider<UserNavigationViewModel>(
            // //     create: (_) =>
            // //         UserNavigationViewModel(NavigationService.instace)),
            // // ChangeNotifierProvider<SettingViewModel>(
            // //     create: (_) => SettingViewModel(NavigationService.instace)),
          ],
          child: MaterialApp(
            navigatorKey: NavigationService.instace.navigationKey,
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                useMaterial3: true,
                fontFamily: GoogleFonts.poppins().fontFamily),
            title: 'Restauvers',
            home: child,
          ),
        );
      },
      child: SplashScreen(),
    );
  }
}
