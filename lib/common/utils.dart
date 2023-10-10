import 'package:flutter/material.dart';

isScreenSmall({required BuildContext context}) {
  return MediaQuery.sizeOf(context).width <= 700;
}
