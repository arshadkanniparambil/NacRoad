import 'package:database_basics/Screen_search.dart';
import 'package:database_basics/screen_home.dart';
import 'package:database_basics/screen_list.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        backgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ScreenHome(),
        '/search_screen': (context) => ScreenSearch(),
        '/list_screen': (context) => ScreenList(),
      },
    );
  }
}
