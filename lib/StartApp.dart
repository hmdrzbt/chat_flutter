import 'package:flutter/material.dart';
import 'package:flutter_chat/View/Pages/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartApp extends StatefulWidget {
  @override
  _StartAppState createState() => _StartAppState();
}

class _StartAppState extends State<StartApp> {

  checkIsLogin() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString("loginToken") ?? '';
    String init = token == '' ? "Login2" : LoginPage.id;
    Navigator.pop(context);
    Navigator.pushNamed(context, LoginPage.id);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    checkIsLogin();
    return Scaffold(backgroundColor: Colors.white,
    body: Center(child: Text(""),),);
  }
}
