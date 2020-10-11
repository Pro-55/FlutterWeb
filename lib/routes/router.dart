import 'package:FlutterWeb/routes/route_names.dart';
import 'package:FlutterWeb/test_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:FlutterWeb/extensions/string_extensions.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  final routingData = settings.name.getRoutingData;
  switch (routingData.route) {
    case routeHome:
      return _getPageRoute(TestView(title: 'Home'));
    case routeMac:
      return _getPageRoute(TestView(title: 'Mac'));
    case routeIPad:
      return _getPageRoute(TestView(title: 'iPad'));
    case routeIPhone:
      return _getPageRoute(TestView(title: 'iPhone'));
    case routeWatch:
      return _getPageRoute(TestView(title: 'Watch'));
    case routeTV:
      return _getPageRoute(TestView(title: 'TV'));
    case routeMusic:
      return _getPageRoute(TestView(title: 'Music'));
    case routeSupport:
      return _getPageRoute(TestView(title: 'Support'));
    default:
      return null;
  }
}

PageRoute _getPageRoute(Widget child) => _FadeRoute(child: child);
// MaterialPageRoute _getPageRoute(Widget child) =>
//     MaterialPageRoute(builder: (context) => child);

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
