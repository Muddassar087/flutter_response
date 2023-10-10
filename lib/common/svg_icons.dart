import 'package:flutter/material.dart';
import 'package:flutter_response/constants.dart';
import 'package:flutter_svg/svg.dart';

class LockIcon extends StatelessWidget {
  const LockIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(kLockIcon);
  }
}

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(kMenuIcon);
  }
}
