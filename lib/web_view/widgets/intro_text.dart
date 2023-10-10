import 'package:flutter/material.dart';
import 'package:flutter_response/common/intro_text_widgets.dart';
import 'package:flutter_response/common/utils.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: SelectableRegion(
        focusNode: FocusNode(),
        selectionControls: DesktopTextSelectionControls(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntroMainHeading(
              text: "Discover",
              size: isScreenSmall(context: context) ? 68 : 128,
              fontFamily: "MerriweatherSans",
            ),
            const SizedBox(height: 2),
            IntroSubHeading(
              text: "top tier gear for hunting and cmaping",
              size: isScreenSmall(context: context) ? 28 : 32,
              fontWeight: FontWeight.w100,
              height: 1.1,
              maxWidth: MediaQuery.sizeOf(context).width *
                  (isScreenSmall(context: context) ? .7 : .5),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
