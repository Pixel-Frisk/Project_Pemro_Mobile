import 'package:flutter/material.dart';
import 'package:flood_detector/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flood Detector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: login(),
    );
  }
}
