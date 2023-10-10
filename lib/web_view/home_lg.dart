import 'package:flutter/material.dart';
import 'package:flutter_response/common/utils.dart';
import 'package:flutter_response/constants.dart';
import 'package:flutter_response/common/custom_appbar.dart';
import 'package:flutter_response/common/logo.dart';

import 'package:flutter_response/web_view/widgets/action_buttons.dart';
import 'package:flutter_response/web_view/widgets/intro_text.dart';
import 'package:flutter_response/web_view/widgets/nav_bar_container.dart';

class HomeScreenLG extends StatelessWidget {
  const HomeScreenLG({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          /// BACKGROUND IMAGE
          image: DecorationImage(
              image: AssetImage(
                kBackgroundImage,
              ),
              fit: BoxFit.cover,
              alignment: Alignment.topRight),
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              /// CUSTOM APP BAR
              Align(
                alignment: Alignment.topCenter,
                child: CustomAppBar(
                  leading: const Logo(),
                  navItemsCenter: isScreenSmall(context: context)
                      ? null
                      : const NavbarContainer(),
                  actionButtons: const ActionButtons(
                    spacing: 12,
                  ),
                  horizontalPadding: 26,
                  verticalPadding: 32,
                ),
              ),

              /// INTRO TEXT
              const IntroText()
            ],
          ),
        ),
      ),
    );
  }
}
