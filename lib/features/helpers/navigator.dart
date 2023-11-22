import 'package:flutter/material.dart';

class NavigationService {
  late GlobalKey<NavigatorState> navigationKey;

  static NavigationService instace = NavigationService();

  NavigationService() {
    navigationKey = GlobalKey<NavigatorState>();
  }

  navigate(Widget rn) {
    return navigationKey.currentState!
        .push(MaterialPageRoute(builder: (context) => rn));
  }

  goback() {
    return navigationKey.currentState!.pop();
  }

  showloader() {
    Future.delayed(Duration.zero, () {
      showDialog(
        context: navigationKey.currentContext!,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        },
      );
    });
  }
}
