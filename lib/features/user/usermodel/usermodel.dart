import 'package:flutter/material.dart';
import 'package:healing_paws/features/getstarted/view/salection.dart';
import 'package:healing_paws/features/helpers/navigator.dart';
import 'package:healing_paws/features/setting/view/Help&Feedback.dart';
import 'package:healing_paws/features/setting/view/settingscreen.dart';
import 'package:healing_paws/features/user/view/AddCard.dart';
import 'package:healing_paws/features/user/view/Appointment.dart';
import 'package:healing_paws/features/user/view/BookingDetails.dart';
import 'package:healing_paws/features/user/view/ConfirmBooking.dart';
import 'package:healing_paws/features/user/view/Favorites.dart';
import 'package:healing_paws/features/user/view/MyWallet.dart';
import 'package:healing_paws/features/user/view/Notifications.dart';
import 'package:healing_paws/features/user/view/PawsService.dart';
import 'package:healing_paws/features/user/view/PaymentDetails.dart';
import 'package:healing_paws/features/user/view/RescheduleBooking.dart';
import 'package:healing_paws/features/user/view/RescheduleanAppointment.dart';
import 'package:healing_paws/features/user/view/SearchResults.dart';
import 'package:healing_paws/features/user/view/SelectPaymentMethod.dart';
import 'package:healing_paws/features/user/view/chattingscreen.dart';
import 'package:healing_paws/features/user/view/discoverSearchResults.dart';
import 'package:healing_paws/features/user/view/user_DogDetails.dart';
import 'package:healing_paws/features/user/view/user_Location.dart';
import 'package:healing_paws/features/user/view/user_editprofile.dart';
import 'package:healing_paws/features/user/view/user_myprofile.dart';
import 'package:healing_paws/features/user/view/usermain.dart';
import 'package:healing_paws/features/user/view/userrefundpolicy.dart';

class UserNavigationViewModel extends ChangeNotifier {
  int bottomIndex = 0;

  final NavigationService _navigationService;

  UserNavigationViewModel(this._navigationService);

  changeBottomIndex(index) {
    bottomIndex = index;
    notifyListeners();
  }

  goTouser_myprofile() {
    _navigationService.navigate(const user_myprofile());
  }

  goTouser_location() {
    _navigationService.navigate(const user_location());
  }

  goTouser_editprofile() {
    _navigationService.navigate(const user_editprofile());
  }

  goToPawsService() {
    _navigationService.navigate(const PawsService());
  }

  goTouser_DogDetails() {
    _navigationService.navigate(const user_DogDetails());
  }

  goToAppointment() {
    _navigationService.navigate(const Appointment());
  }

  goTorConfirmBooking() {
    _navigationService.navigate(const ConfirmBooking());
  }

  goToPaymentDetails() {
    _navigationService.navigate(const PaymentDetails());
  }

  goToSelectPaymentMethod() {
    _navigationService.navigate(const SelectPaymentMethod());
  }

  goToAddCard() {
    _navigationService.navigate(const AddCard());
  }

  goTouser_main() {
    _navigationService.navigate(const user_main());
  }

  goT0BookingDetails() {
    _navigationService.navigate(const BookingDetails());
  }

  goToRescheduleBooking() {
    _navigationService.navigate(const RescheduleBooking());
  }

  goToRescheduleanAppointment() {
    _navigationService.navigate(const RescheduleanAppointment());
  }

  goTochattingscreen() {
    _navigationService.navigate(const chattingscreen());
  }

  goToFavorites() {
    _navigationService.navigate(const Favorites());
  }

  goToMyWallet() {
    _navigationService.navigate(const MyWallet());
  }

  goTouserrefundpolicy() {
    _navigationService.navigate(const userrefundpolicy());
  }

  goToHelpFeedback() {
    _navigationService.navigate(const HelpFeedback());
  }

  goToSearchResults() {
    _navigationService.navigate(const SearchResults());
  }

  goTodiscoversearchresults() {
    _navigationService.navigate(const discoversearchresults());
  }

  goTonotification() {
    _navigationService.navigate(const Notifications());
  }

  goToSelectionScreen() {
    _navigationService.navigate(const SelectionScreen());
  }

  // goTotransactionhistory() {
  //   _navigationService.navigate(const transactionhistory());
  // }

  // goTohelpfeedback() {
  //   _navigationService.navigate(const helpfeedback());
  // }

  // goToLoginScreen() {
  //   _navigationService.navigate(const SelectionScreen());
  // }

  goTosettingscreen() {
    _navigationService.navigate(const settingscreen());
  }

  // goToRestaurantprofile() {
  //   _navigationService.navigate(const Restaurantprofile());
  // }
}
