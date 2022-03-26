import 'package:flutter/material.dart';
import 'package:navigation_sample/screen_one.dart';
import 'package:navigation_sample/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: ScreenOne(),
      routes: {
        'screen_one': (context) => ScreenOne(),
        'screen_two': (context) => ScreenTwo(),
      },
    );
  }
}
