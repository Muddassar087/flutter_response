import 'package:flutter/material.dart';
import 'package:flutter_response/constants.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.size = 20});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          "hunt",
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Roboto",
            fontSize: size,
            height: 1.0,
          ),
        ),
        const SizedBox(width: 2),
        const CircleAvatar(
          radius: 2,
          backgroundColor: Color(kprimary),
        ),
        const SizedBox(width: 2),
        Text(
          "hike",
          style: TextStyle(
            color: const Color(0xffC2C2C2), // STORE IN A CONST VARIABLE
            fontFamily: "Roboto",
            fontSize: size,
            height: 1.0,
          ),
        ),
      ],
    );
  }
}
