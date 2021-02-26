import 'package:FlutterWeb/locator.dart';
import 'package:FlutterWeb/services/navigation_service.dart';
import 'package:flutter/material.dart';

class NavDrawerItem extends StatelessWidget {
  final String title;
  final String routeName;

  const NavDrawerItem({@required this.title, @required this.routeName});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 64,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(children: <Widget>[
          SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
        ]),
      ),
      onPressed: () {
        Scaffold.of(context).openEndDrawer();
        locator<NavigationService>().navigateTo(routeName);
      },
    );
  }
}
