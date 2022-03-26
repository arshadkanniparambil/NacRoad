import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final String name;
  const ScreenTwo({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/aju.jpeg',
              fit: BoxFit.contain,
              height: 40,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(name),
              ),
            )
          ],
        ),
      ),
    );
  }
}
