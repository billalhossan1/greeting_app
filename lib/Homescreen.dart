import 'package:flutter/material.dart';
import 'package:greeting_app/tablet.dart';
import 'desktop.dart';
import 'mobile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (_Screenwidth > 1000) {
            return Desktop();
          } else if (_Screenwidth > 600) {
            return Tablet();
          } else {
            return Mobile();
          }
        },
      ),
    );
  }
}