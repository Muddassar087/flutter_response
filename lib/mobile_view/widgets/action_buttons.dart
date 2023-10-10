import 'package:flutter/material.dart';
import 'package:flutter_response/common/actions_cards.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key, this.spacing});

  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        /// LOCK ICON
        const LockCard(),

        SizedBox(width: spacing ?? 0),

        /// MENU ICON
        const BlurredMenuCard()
      ],
    );
  }
}
