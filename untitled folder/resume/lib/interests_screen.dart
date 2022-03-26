import 'package:flutter/material.dart';

class interestScreen extends StatelessWidget {
  const interestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Interests'),
        ),
        body: Center(
          child: Text('Interests'),
        ));
  }
}
