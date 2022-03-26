import 'package:flutter/material.dart';

void main() {
  runApp(const MySAmpleApp());
}

class MySAmpleApp extends StatelessWidget {
  const MySAmpleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: const HomeLayout(),
      title: 'My App',
    );
  }
}

class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(
          // ignore: sized_box_for_whitespace
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
                color: Colors.cyan,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'Body text',
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: () {}, child: Text("Click Me")),
                        ElevatedButton(
                            onPressed: () {}, child: Text("Click me too")),
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      ],
                    )
                  ],
                )),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(60),
                border: Border.all(
                  color: Colors.green,
                  width: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
                color: Colors.deepOrangeAccent,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'Body text',
                      style: TextStyle(
                        color: Colors.yellowAccent,
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: () {}, child: Text("Click Me")),
                        ElevatedButton(
                            onPressed: () {}, child: Text("Click me too")),
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      ],
                    )
                  ],
                )),
          ),
        ],
      )),
    );
  }
}
