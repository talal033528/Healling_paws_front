import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double xOffset;
  final double yOffset;
  final double scaleFactor;
  final bool isDrawerOpen;
  final Function() onDrawerTap;

  CustomAppBar({
    required this.xOffset,
    required this.yOffset,
    required this.scaleFactor,
    required this.isDrawerOpen,
    required this.onDrawerTap,
  });

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Custom Drawer Example'),
      leading: IconButton(
        icon: Icon(
          isDrawerOpen ? Icons.arrow_back_ios : Icons.menu,
        ),
        onPressed: () {
          onDrawerTap();
        },
      ),
    );
  }
}
