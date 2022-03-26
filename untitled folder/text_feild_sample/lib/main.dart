import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amberAccent),
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final _textController = TextEditingController();

  String _displayText = 'Your text will be shown here';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _textController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Type Something'),
              ),
              ElevatedButton(
                  onPressed: () {
                    print(_textController.text);
                    setState(() {
                      _displayText = _textController.text;
                    });
                  },
                  child: Text('Submit')),
              Text(_displayText)
            ],
          ),
        ),
      ),
    );
  }
}
