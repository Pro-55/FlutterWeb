import 'package:FlutterWeb/models/routing_data_model.dart';

extension StringExtensions on String {
  RoutingDataModel get getRoutingData {
    final uriData = Uri.parse(this);
    return RoutingDataModel(
      route: uriData.path,
      queryParameters: uriData.queryParameters,
    );
  }
}
