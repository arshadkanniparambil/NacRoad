import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          actions: [
            IconButton(
              onPressed: () {
                signOutProfile(context);
              },
              icon: const Icon(Icons.exit_to_app),
            )
          ],
        ),
        body: SafeArea(
          child: Center(
            child: Image.asset(
              'assets/images/aju.jpeg',
              height: 500,
            ),
          ),
        ));
  }

  signOutProfile(context) {
    Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
  }
}
