import 'package:flutter/material.dart';
import 'package:project_630710131/cal.dart';
import 'package:project_630710131/welcome.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'AXG WEB',
      theme: ThemeData(// This is the theme of your application.

        primarySwatch: Colors.yellow,
      ),
      home: welcome(),
    );
  }
}
