import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatsapp_sample_ui/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ScreenHome(),
        '/screen_two': (context) => ScreenTwo(name: 'Aju')
      },
    );
  }
}

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Whatsapp')),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Name $index'),
              subtitle: Text('Your message $index'),
              leading: const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green,
                backgroundImage: AssetImage('assets/images/aju.jpeg'),
              ),
              trailing: const Text('12:34 PM'),
              onTap: () {
                // var push = Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (context) {
                //   return ScreenTwo(name: 'Name $index');
                Navigator.pushNamed(context, '/screen_two');
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 30),
    );
  }
}
