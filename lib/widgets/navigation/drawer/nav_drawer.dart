import 'package:FlutterWeb/routes/route_names.dart';
import 'package:FlutterWeb/widgets/navigation/drawer/nav_drawer_item.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          NavDrawerItem(title: 'Mac', routeName: routeMac),
          NavDrawerItem(title: 'iPad', routeName: routeIPad),
          NavDrawerItem(title: 'iPhone', routeName: routeIPhone),
          NavDrawerItem(title: 'Watch', routeName: routeWatch),
          NavDrawerItem(title: 'TV', routeName: routeTV),
          NavDrawerItem(title: 'Music', routeName: routeMusic),
          NavDrawerItem(title: 'Support', routeName: routeSupport),
        ],
      ),
    );
  }
}
