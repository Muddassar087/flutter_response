import 'package:flutter/material.dart';

class IntroMainHeading extends StatelessWidget {
  const IntroMainHeading(
      {super.key,
      this.size = 68,
      this.text,
      this.fontFamily = 'Roboto',
      this.fontWeight = FontWeight.normal,
      this.height = 1.0});

  final double size;
  final String? text;
  final String? fontFamily;
  final FontWeight fontWeight;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      style: TextStyle(
          fontSize: size,
          color: Colors.white,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          height: height),
    );
  }
}

class IntroSubHeading extends StatelessWidget {
  const IntroSubHeading(
      {super.key,
      this.size = 68,
      this.text,
      this.fontFamily = 'Roboto',
      this.fontWeight = FontWeight.normal,
      this.height = 1.0,
      this.maxWidth = 280,
      this.textAlign = TextAlign.start});

  final double size;
  final String? text;
  final String? fontFamily;
  final FontWeight fontWeight;
  final double height;
  final double maxWidth;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: maxWidth,
      child: Text(
        text ?? "",
        textAlign: textAlign,
        style: TextStyle(
            fontSize: size,
            color: Colors.white,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            height: height),
      ),
    );
  }
}
