import 'package:flutter/material.dart';
import 'package:flutter_response/constants.dart';
import 'package:flutter_response/common/custom_appbar.dart';
import 'package:flutter_response/mobile_view/widgets/intro_text.dart';
import 'package:flutter_response/common/logo.dart';
import 'package:flutter_response/mobile_view/widgets/action_buttons.dart';

class HomeScreenSM extends StatelessWidget {
  const HomeScreenSM({super.key});

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
            alignment: Alignment.topRight,
          ),
        ),
        child: const SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// CUSTOM APP BAR
              CustomAppBar(
                leading: Logo(),
                actionButtons: ActionButtons(
                  spacing: 12,
                ),
              ),

              /// INTRO TEXT
              Expanded(
                child: IntroText(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
