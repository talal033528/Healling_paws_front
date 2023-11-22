import 'dart:async';
import 'package:flutter/material.dart';
import 'package:healing_paws/features/helpers/navigator.dart';
import 'package:healing_paws/features/hendler/view/handlermain.dart';
import 'package:healing_paws/features/setting/view/AboutApp.dart';
import 'package:healing_paws/features/setting/view/CardDetails.dart';
import 'package:healing_paws/features/setting/view/PrivacyPolicy.dart';
import 'package:healing_paws/features/setting/view/RefundPolicy.dart';
import 'package:healing_paws/features/setting/view/Terms&Conditions.dart';
import 'package:healing_paws/features/setting/view/settingaddcard.dart';
import 'package:healing_paws/features/user/view/usermain.dart';

class SettingViewModel extends ChangeNotifier {
  String LoginType = "";
  bool remembermeToggle = true;
  bool signupagree = false;
  int otpstart = 10;
  int otpcurrent = 0;
  bool otptimercompleted = false;
  Timer? _otpTimer;

  // String loginType = ""; // Naming convention update (camelCase)
  // bool rememberMeToggle = true; // Naming convention update (camelCase)
  // bool signupAgree = false; // Naming convention update (camelCase)
  // int otpStart = 10; // Naming convention update (camelCase)
  // int otpCurrent = 0; // Naming convention update (camelCase)
  // bool otpTimerCompleted = false; // Naming convention update (camelCase)
  // Timer? _otpTimer;
  TextEditingController otpController = TextEditingController();

  final NavigationService _navigationService;

  SettingViewModel(this._navigationService);

  goToCardDetails() {
    _navigationService.navigate(const CardDetails());
  }

  goTosettingaddcard() {
    _navigationService.navigate(const settingaddcard());
  }

  goToTermsConditions() {
    _navigationService.navigate(const TermsConditions());
  }

  goToPrivacyPolicy() {
    _navigationService.navigate(const PrivacyPolicy());
  }

  goToRefundPolicy() {
    _navigationService.navigate(const RefundPolicy());
  }

  goToAboutApp() {
    _navigationService.navigate(const AboutApp());
  }

  // goToUserTypeScreenHelpFeedback() {
  //   if (LoginType == "Handler") {
  //     _navigationService.navigate(const hendler_main());
  //   } else {
  //     _navigationService.navigate(const user_main());
  //   }
  // }
  goToUserTypeScreen123() {
    if (LoginType == "user") {
      _navigationService.navigate(const user_main());
    } else {
      _navigationService.navigate(const hendler_main());
    }
  }
}
