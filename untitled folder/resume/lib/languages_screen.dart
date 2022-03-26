import 'package:flutter/material.dart';

class languagesScreen extends StatelessWidget {
  const languagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Languages'),
        ),
        body: Center(
          child: Text('Languages'),
        ));
  }
}
