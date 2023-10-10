import 'package:flutter/material.dart';
import 'package:flutter_response/web_view/home_lg.dart';
import 'package:flutter_response/mobile_view/home_sm.dart';
import 'package:flutter_response/platform_check.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return (PlatformUtils.isMobile) ? _buildSmallHome() : _buildLargeHome();
  }

  /// IPHONE, ANDROID, IPAD
  Widget _buildSmallHome() {
    return const HomeScreenSM();
  }

  /// WEB, MACOS, WINDOWS
  Widget _buildLargeHome() {
    return const HomeScreenLG();
  }
}
