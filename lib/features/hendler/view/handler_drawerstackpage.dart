import 'package:flutter/material.dart';
import 'package:healing_paws/features/hendler/view/handler_home.dart';
import 'package:healing_paws/features/hendler/view/handlermain.dart';
import 'package:healing_paws/features/hendler/view/side_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft, // Add this line
        children: [
          hendler_menu(),
          handler_home(),
        ],
      ),
    );
  }
}
