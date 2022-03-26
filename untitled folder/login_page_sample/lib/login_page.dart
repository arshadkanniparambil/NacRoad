// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();
  bool _isMinPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                  hintText: 'Enter your username',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter an 8 digit Password',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Visibility(
                    visible: !_isMinPassword,
                    child: Text(
                      'Password should be minimum 8 digit',
                      style: TextStyle(color: Colors.red),
                    )),
                IconButton(
                  onPressed: () {
                    checkLogin(context);
                  },
                  icon: Icon(Icons.login_outlined),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void checkLogin(BuildContext context) {
    final _username = _usernameController.text;
    final _password = _passwordController.text;

    if (_username.isEmpty || _password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(10),
        backgroundColor: Colors.black,
        content: Text(
          'Username or Password can not be empty',
        ),
        action: SnackBarAction(
          textColor: Colors.redAccent,
          label: 'Close',
          onPressed: () {},
        ),
      ));
    }
    if (_password.length < 8) {
      //check if the password is 8 digit
      setState(() {
        _isMinPassword = false;
      });
    } else if (_username == _password) {
      Navigator.pushReplacementNamed(context, '/profile_page');
    } else {
      const _errorMessage = 'Username and Password does not match';

      // ScaffoldMessenger.of(context)
      //     .showSnackBar(SnackBar(content: Text(_errorMessage)));

      showDialog(
          context: context,
          builder: (context1) {
            return AlertDialog(
              title: Text('Error'),
              content: Text(_errorMessage),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context1).pop();
                    },
                    child: Text('Close'))
              ],
            );
          });
    }
  }
}
