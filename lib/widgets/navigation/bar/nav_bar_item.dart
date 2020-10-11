import 'package:FlutterWeb/locator.dart';
import 'package:FlutterWeb/services/navigation_service.dart';
import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String routeName;

  const NavBarItem({@required this.title, @required this.routeName});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
      onPressed: () {
        locator<NavigationService>().navigateTo(routeName);
      },
    );
  }
}
