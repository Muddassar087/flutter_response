import 'package:flutter/material.dart';
import 'package:flutter_response/platform_check.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.leading,
    this.navItemsCenter,
    this.actionButtons,
    this.horizontalPadding = 16,
    this.verticalPadding = 24,
  });

  final Widget? leading;
  final Widget? navItemsCenter;
  final Widget? actionButtons;
  final double horizontalPadding;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading ?? const SizedBox(),

          /// ONLY SHOW WHEN PLATFORM IS WEB
          if (!PlatformUtils.isMobile) navItemsCenter ?? const SizedBox(),

          actionButtons ?? const SizedBox(),
        ],
      ),
    );
  }
}
