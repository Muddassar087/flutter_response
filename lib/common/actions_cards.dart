import 'package:flutter/material.dart';
import 'package:flutter_response/constants.dart';
import 'dart:ui' as ui;

import 'package:flutter_response/common/svg_icons.dart';

class BlurredMenuCard extends StatelessWidget {
  const BlurredMenuCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kIconCardSize,
      width: kIconCardSize,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRect(
            child: BackdropFilter(
              filter: ui.ImageFilter.blur(
                sigmaX: 50.0,
                sigmaY: 50.0,
              ),
              child: Container(
                padding: EdgeInsets.all(
                  (kIconCardSize * .14),
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.20),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          const MenuIcon(),
        ],
      ),
    );
  }
}

class LockCard extends StatelessWidget {
  const LockCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kIconCardSize,
      width: kIconCardSize,
      padding: EdgeInsets.all(
        (kIconCardSize * .14),
      ),
      decoration: BoxDecoration(
        color: const Color(kprimary),
        borderRadius: BorderRadius.circular(4),
      ),
      child: const LockIcon(),
    );
  }
}
