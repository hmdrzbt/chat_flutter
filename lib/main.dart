import 'package:flutter/material.dart';
import 'package:flutter_chat/StartApp.dart';
import 'package:flutter_chat/providers/AccountProvider.dart';
import 'package:flutter_chat/routs.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>AccountProvider())
      ],
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.deepPurple,
        ),
        debugShowCheckedModeBanner: false,
        home: StartApp(),
        routes: Routs().giveRouts(),
      ),
    ),
  );
}
