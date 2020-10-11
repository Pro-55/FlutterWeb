import 'package:FlutterWeb/widgets/navigation/bar/nav_bar_desktop.dart';
import 'package:FlutterWeb/widgets/navigation/bar/nav_bar_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: NavBarDesktop(),
      tablet: NavBarMobile(),
      mobile: NavBarMobile(),
    );
  }
}
