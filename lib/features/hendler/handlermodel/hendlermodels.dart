import 'package:flutter/material.dart';
import 'package:healing_paws/features/getstarted/view/loginscreen.dart';
import 'package:healing_paws/features/getstarted/view/salection.dart';
import 'package:healing_paws/features/helpers/navigator.dart';
import 'package:healing_paws/features/hendler/view/AddNewBank.dart';
import 'package:healing_paws/features/hendler/view/AddPetDetails.dart';
import 'package:healing_paws/features/hendler/view/EditHandlerProfile.dart';
import 'package:healing_paws/features/hendler/view/MyEarning.dart';
import 'package:healing_paws/features/hendler/view/handler_ManageProfile.dart';
import 'package:healing_paws/features/hendler/view/handler_MarkasCompleted.dart';
import 'package:healing_paws/features/hendler/view/handler_MyWallet.dart';
import 'package:healing_paws/features/hendler/view/handler_Withdrawscreen.dart';
import 'package:healing_paws/features/hendler/view/handler_addbank.dart';
import 'package:healing_paws/features/hendler/view/handler_dogdetails.dart';
import 'package:healing_paws/features/hendler/view/handler_jobcomplete.dart';
import 'package:healing_paws/features/hendler/view/handler_salectbank.dart';
import 'package:healing_paws/features/hendler/view/handlermain.dart';
import 'package:healing_paws/features/hendler/view/handlertestdrawer.dart';
import 'package:healing_paws/features/hendler/view/handlerviewdetails.dart';
import 'package:healing_paws/features/hendler/view/user_profile.dart';
import 'package:healing_paws/features/hendler/view/userlocation.dart';
import 'package:healing_paws/features/setting/view/Help&Feedback.dart';
import 'package:healing_paws/features/setting/view/settingscreen.dart';
import 'package:healing_paws/features/user/view/MyWallet.dart';
import 'package:healing_paws/features/user/view/Notifications.dart';
import 'package:healing_paws/features/user/view/chattingscreen.dart';

class hendlerNavigationViewModel extends ChangeNotifier {
  int bottomIndex = 0;

  final NavigationService _navigationService;
  int reportSelected = 1;

  List reportfilters = ["Weekly", "Monthly", "Yearly"];

  hendlerNavigationViewModel(this._navigationService);

  void changeBottomIndex(int index) {
    bottomIndex = index;
    notifyListeners();
  }

  goToHelpFeedback() {
    _navigationService.navigate(const HelpFeedback());
  }

  goToMyEarning() {
    _navigationService.navigate(const MyEarning());
  }

  selectreportSelected(i) {
    reportSelected = i;
    notifyListeners();
  }

  goTochatscreen() {
    _navigationService.navigate(const chattingscreen());
  }

  goTohendler_viewdetails() {
    _navigationService.navigate(const hendler_viewdetails());
  }

  goTouserprofile() {
    _navigationService.navigate(const userprofile());
  }

  goToviewlocation() {
    _navigationService.navigate(const viewlocation());
  }

  goTohendler_ManageProfile() {
    _navigationService.navigate(const hendler_ManageProfile());
  }

  goTohendler_dogdetails() {
    _navigationService.navigate(const hendler_dogdetails());
  }

  goTohendler_main() {
    _navigationService.navigate(const hendler_main());
  }

  goToAddPetDetails() {
    _navigationService.navigate(const AddPetDetails());
  }

  goToedit_profile() {
    _navigationService.navigate(const edit_hendlerprofile());
  }

  goTohendler_mywallet() {
    _navigationService.navigate(const hendler_mywallet());
  }

  goTohandler_salectbank() {
    _navigationService.navigate(const handler_salectbank());
  }

  goT0Withdraw() {
    _navigationService.navigate(const Withdraw());
  }

  goTohandler_MarkasCompleted() {
    _navigationService.navigate(const handler_MarkasCompleted());
  }

  goTohandler_jobcomplete() {
    _navigationService.navigate(const handler_jobcomplete());
  }

  goToNotifications() {
    _navigationService.navigate(const Notifications());
  }

  goTocsettingscreen() {
    _navigationService.navigate(const settingscreen());
  }

  goToAddNewBank() {
    _navigationService.navigate(const handler_addbank());
  }

  goToHomeScreen() {
    _navigationService.navigate(HomeScreen());
  }

  // goToUserMain() {
  //   _navigationService.navigate(const UserMain());
  // }

  // goToUusereditprofile() {
  //   _navigationService.navigate(const usereditprofile());
  // }

  // goTonotification() {
  //   _navigationService.navigate(const Notifications());
  // }

  // goToChatListScreen() {
  //   _navigationService.navigate(const ChatListScreen());
  // }

  // goTotransactionhistory() {
  //   _navigationService.navigate(const transactionhistory());
  // }

  // goTohelpfeedback() {
  //   _navigationService.navigate(const helpfeedback());
  // }

  goToSelectionScreen() {
    _navigationService.navigate(const SelectionScreen());
  }

  // goTosettingscreen() {
  //   _navigationService.navigate(const settingscreen());
  // }

  // goToRestaurantprofile() {
  //   _navigationService.navigate(const Restaurantprofile());
  // }
}
