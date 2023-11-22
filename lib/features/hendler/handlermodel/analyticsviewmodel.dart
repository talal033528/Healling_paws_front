import 'package:flutter/material.dart';
import 'package:healing_paws/features/helpers/navigator.dart';

class AnalyticsViewModel extends ChangeNotifier {
  int reportSelected = 1;

  List reportfilters = ["Weekly", "Monthly", "Yearly"];

  final NavigationService _navigationService;

  AnalyticsViewModel(this._navigationService);

  // goToTotalSales() {
  //   _navigationService.navigate(const ReportSales(type: "Total Sales"));
  // }

  // goToTotalOrders() {
  //   _navigationService.navigate(const ReportSales(type: "Total Orders"));
  // }

  // goToCancelOrders() {
  //   _navigationService.navigate(const ReportSales(type: "Cancel Orders"));
  // }

  selectreportSelected(i) {
    reportSelected = i;
    notifyListeners();
  }

  void goTonotification() {}
}
