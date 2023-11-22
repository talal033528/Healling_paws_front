import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:healing_paws/features/getstarted/view/CreateBusinessProfile.dart';
import 'package:healing_paws/features/getstarted/view/Privacy&Policy.dart';
import 'package:healing_paws/features/getstarted/view/confirmpasword.dart';
import 'package:healing_paws/features/getstarted/view/create_profile.dart';
import 'package:healing_paws/features/getstarted/view/create_userprofile.dart';
import 'package:healing_paws/features/getstarted/view/forgot_otp.dart';
import 'package:healing_paws/features/getstarted/view/forgot_pass.dart';
import 'package:healing_paws/features/getstarted/view/hendleradddog.dart';
import 'package:healing_paws/features/getstarted/view/hendleradddogdatails.dart';
import 'package:healing_paws/features/getstarted/view/login_type.dart';
import 'package:healing_paws/features/getstarted/view/loging_withemail.dart';
import 'package:healing_paws/features/getstarted/view/loginscreen.dart';
import 'package:healing_paws/features/getstarted/view/otpscreen.dart';
import 'package:healing_paws/features/getstarted/view/salection.dart';
import 'package:healing_paws/features/helpers/navigator.dart';
import 'package:healing_paws/features/hendler/view/handler_drawerstackpage.dart';
import 'package:healing_paws/features/hendler/view/handlermain.dart';
import 'package:healing_paws/features/user/view/usermain.dart';

class GetStartedViewModel extends ChangeNotifier {
  String LoginType = "";
  bool remembermeToggle = true;
  bool signupagree = false;
  int otpstart = 10;
  int otpcurrent = 0;
  bool otptimercompleted = false;
  Timer? _otpTimer;
  TextEditingController otpController = TextEditingController();

  final NavigationService _navigationService;

  GetStartedViewModel(this._navigationService);

  void goToLoginSelect(String type) {
    LoginType = type;
    _navigationService.navigate(const LoginTypeSelect());
  }

  void goToLogin() {
    _navigationService.navigate(const LoginScreen());
  }

  void goToCreateBusinessProfile() {
    _navigationService.navigate(const CreateBusinessProfile());
  }

  void goToOTP() {
    _navigationService.navigate(const OtpScreen());
  }

  void goToForgotOTP() {
    _navigationService.navigate(const ForgotOTPScreen());
  }

  void gotoPrivacyPolicy() {
    _navigationService.navigate(PrivacyPolicy());
  }

  void goToSelectionScreen() {
    _navigationService.navigate(const SelectionScreen());
  }

  void goToConfirmPassword() {
    _navigationService.navigate(const ConfirmPassword());
  }

  void goTohendleradddog() {
    _navigationService.navigate(const hendleradddog());
  }

  void goTologinwithemail() {
    _navigationService.navigate(const loginwithemail());
  }

  void goToHomePage() {
    _navigationService.navigate(HomePage());
  }

  void goToForgot() {
    _navigationService.navigate(const ForgoScreen());
  }

  void goToadddogdatails() {
    _navigationService.navigate(const adddogdatails());
  }

  goTouser_main() {
    _navigationService.navigate(const user_main());
  }

  goTohendler_main() {
    _navigationService.navigate(const hendler_main());
  }

  Login() {
    if (LoginType == "user") {
      _navigationService.navigate(const hendler_main());
    } else {
      _navigationService.navigate(const user_main());
    }
  }

  goToUserTypeScreen() {
    if (LoginType == "Handler") {
      _navigationService.navigate(const CreateProfile());
    } else {
      _navigationService.navigate(const usercreateprofile());
    }
  }

  remembermetoggle(bool value) {
    remembermeToggle = value;
    notifyListeners();
  }

  signupagreechange(bool value) {
    signupagree = value;
    notifyListeners();
  }

  resendCode() {
    otpstart = 10;
    otpcurrent = 0;
    otptimercompleted = false;
    startTimer();
  }

  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    _otpTimer?.cancel(); // Cancel the previous timer, if any
    _otpTimer = Timer.periodic(oneSecond, (timer) {
      if (otpstart == 0) {
        timer.cancel();
        otptimercompleted = true;
      } else if (otpcurrent == 10) {
        otptimercompleted = true;
      } else {
        otpcurrent += 1;
      }
      notifyListeners();
    });
  }

  // void goTonotification() {}

  // void goToAllrestaurants() {}

  // void goToRestaurantMaink() {}

  // void goToAuserprofile() {}
}
