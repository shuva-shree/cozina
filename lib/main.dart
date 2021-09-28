import 'package:cozina/screens/auth/login.dart';
import 'package:cozina/screens/home/home_page.dart';
// import 'package:cozina/screens/auth/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xffFE8B10),
          accentColor: Color(0xff42ABAE),
          primarySwatch: Colors.blue,
        ),
        home: SignIn());
  }
}
