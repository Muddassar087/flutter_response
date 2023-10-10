import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class NavbarContainer extends StatelessWidget {
  const NavbarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ui.ImageFilter.blur(
          sigmaX: 100.0,
          sigmaY: 100.0,
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.15),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Row(
            children: [
              Text(
                "Shop",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: SizedBox(
                  height: 16,
                  child: VerticalDivider(
                    color: Color(0xff8E8E8E),
                    width: .5,
                  ),
                ),
              ),
              Text(
                "About",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: SizedBox(
                  height: 16,
                  child: VerticalDivider(
                    color: Color(0xff8E8E8E),
                    width: .5,
                  ),
                ),
              ),
              Text(
                "Pricing",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 21),
                child: SizedBox(
                  height: 16,
                  child: VerticalDivider(
                    color: Color(0xff8E8E8E),
                    width: .5,
                  ),
                ),
              ),
              Text(
                "Images",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Roboto",
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
