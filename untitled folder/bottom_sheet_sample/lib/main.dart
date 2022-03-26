import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const ScreenHome(),
      },
    );
  }
}

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        body: SafeArea(
            child: Column(
          children: [
            Text('Bottom sheet check'),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            bottomSheetSampleFunction(context);
          },
          child: const Icon(Icons.arrow_upward_outlined),
        ));
  }
}

Future<void> bottomSheetSampleFunction(BuildContext ctx) async {
  showModalBottomSheet(
      context: ctx,
      builder: (ctx1) {
        return Container(
          width: double.infinity,
          height: 400,
          color: Colors.red,
          child: Text('Its Working'),
        );
      });
}
