import 'package:FlutterWeb/locator.dart';
import 'package:FlutterWeb/routes/route_names.dart';
import 'package:FlutterWeb/routes/router.dart';
import 'package:FlutterWeb/services/navigation_service.dart';
import 'package:FlutterWeb/widgets/home/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await DotEnv().load('.env');
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Apple',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Melno'),
      ),
      builder: (context, child) => HomeWidget(child: child),
      navigatorKey: locator<NavigationService>().navigationKey,
      onGenerateRoute: generateRoute,
      initialRoute: routeHome,
    );
  }
}
