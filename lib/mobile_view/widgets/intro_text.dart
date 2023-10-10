import 'package:flutter/material.dart';
import 'package:flutter_response/common/intro_text_widgets.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IntroMainHeading(
            text: "Discover",
            size: 68,
            fontFamily: "MerriweatherSans",
          ),
          SizedBox(height: 2),
          IntroSubHeading(
            text: "top tier gear for hunting and cmaping",
            size: 28,
            fontWeight: FontWeight.w100,
            height: 1.1,
            maxWidth: 280,
          )
        ],
      ),
    );
  }
}
