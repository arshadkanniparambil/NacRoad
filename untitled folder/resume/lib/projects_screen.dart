import 'package:flutter/material.dart';

class projectScreen extends StatelessWidget {
  const projectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Projects'),
        ),
        body: Center(
          child: Text('Projects'),
        ));
  }
}
