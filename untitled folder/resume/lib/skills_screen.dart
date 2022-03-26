import 'package:flutter/material.dart';

class skillsScreen extends StatelessWidget {
  const skillsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SKills'),
        ),
        body: Center(
          child: Text('Skills'),
        ));
  }
}
