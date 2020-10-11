import 'package:flutter/material.dart';

class TestView extends StatelessWidget {
  final String title;
  const TestView({this.title});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(title),
    );
  }
}
