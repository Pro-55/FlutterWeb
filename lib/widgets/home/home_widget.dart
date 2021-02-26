import 'package:FlutterWeb/widgets/navigation/bar/nav_bar.dart';
import 'package:FlutterWeb/widgets/navigation/drawer/nav_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeWidget extends StatelessWidget {
  final Widget child;
  const HomeWidget({this.child});
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType != DeviceScreenType.desktop
            ? SafeArea(child: NavDrawer())
            : null,
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
