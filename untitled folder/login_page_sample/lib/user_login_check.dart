import 'package:flutter/material.dart';
import 'package:login_page_sample/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckUserLogin extends StatefulWidget {
  const CheckUserLogin({Key? key}) : super(key: key);

  @override
  State<CheckUserLogin> createState() => _CheckUserLoginState();
}

class _CheckUserLoginState extends State<CheckUserLogin> {
  @override
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<int> checkUserLoggedIn() async {
    final sharedprefs = await SharedPreferences.getInstance();
    final _userLogin = sharedprefs.getBool(SAVE_KEY_NAME);
    if (_userLogin == null || _userLogin == false) {
      Navigator.of(context).pushNamed('/login_page');
    } else {
      Navigator.of(context).pushNamed('/profile_page');
    }
    return 0;
  }
}
