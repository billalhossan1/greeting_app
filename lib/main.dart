import 'package:flutter/material.dart';
import 'Homescreen.dart';

void main()
{
  runApp(greetingApp());
}

class greetingApp extends StatelessWidget {  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: HomeScreen(),
  );

  }
}

