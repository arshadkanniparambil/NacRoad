import 'package:flutter/material.dart';
import 'package:resume/education_screen.dart';
import 'package:resume/home_screen.dart';
import 'package:resume/interests_screen.dart';
import 'package:resume/languages_screen.dart';
import 'package:resume/projects_screen.dart';
import 'package:resume/skills_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const Homescreen(),
        '/projects_screen': (context) => const projectScreen(),
        '/education_screen': (context) => const educationScreen(),
        '/skills_screen': (context) => const skillsScreen(),
        '/languages_screen': (context) => const languagesScreen(),
        '/interests_screen': (context) => const interestScreen()
      },
    );
  }
}
