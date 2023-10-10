import 'package:flutter/material.dart';
import 'package:flutter_response/common/actions_cards.dart';
import 'package:flutter_response/common/utils.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key, this.spacing});

  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LockCard(),

        if (isScreenSmall(context: context)) SizedBox(width: spacing ?? 0),

        /// MENU ICON
        if (isScreenSmall(context: context)) const BlurredMenuCard()
      ],
    );
  }
}
