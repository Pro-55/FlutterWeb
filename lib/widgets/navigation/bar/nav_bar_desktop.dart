import 'package:FlutterWeb/routes/route_names.dart';
import 'package:flutter/material.dart';

import 'nav_bar_item.dart';

class NavBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Colors.black87,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          NavBarItem(title: 'Mac', routeName: routeMac),
          NavBarItem(title: 'iPad', routeName: routeIPad),
          NavBarItem(title: 'iPhone', routeName: routeIPhone),
          NavBarItem(title: 'Watch', routeName: routeWatch),
          NavBarItem(title: 'TV', routeName: routeTV),
          NavBarItem(title: 'Music', routeName: routeMusic),
          NavBarItem(title: 'Support', routeName: routeSupport),
        ],
      ),
    );
  }
}
