import 'dart:js';

import 'package:flutter/material.dart';
import 'package:login_page_sample/login_page.dart';
import 'package:login_page_sample/profile_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

const SAVE_KEY_NAME = 'userLoggedIn';
main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login_page': (context) => LoginPage(),
        '/profile_page': (context) => const ProfilePage(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
          child: Center(
              child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, '/login_page');
        },
        child: const Text('Profile Page'),
      ))),
    );
  }
}
