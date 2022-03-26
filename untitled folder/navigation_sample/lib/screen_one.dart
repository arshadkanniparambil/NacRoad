import 'package:flutter/material.dart';
import 'package:navigation_sample/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text('Screen one')),
            ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                //   return ScreenTwo();
                // }));

                Navigator.of(context).pushNamed('screen_two');
              },
              child: Text('Go to Screen 2'),
            ),
          ],
        ),
      ),
    );
  }
}
