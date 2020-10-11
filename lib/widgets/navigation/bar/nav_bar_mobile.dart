import 'package:FlutterWeb/routes/route_names.dart';
import 'package:FlutterWeb/widgets/navigation/bar/nav_bar_item.dart';
import 'package:flutter/material.dart';

class NavBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.black87,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(width: 16),
          IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
          Expanded(
            child:
                Center(child: NavBarItem(title: 'Apple', routeName: routeHome)),
          ),
        ],
      ),
    );
  }
}
