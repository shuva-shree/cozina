import 'package:cozina/screens/auth/login.dart';
import 'package:cozina/screens/food_screen/food_screen.dart';
import 'package:cozina/screens/home/home_page.dart';
import 'package:cozina/screens/list_screens/popular_cuisines.dart';
import 'package:cozina/screens/search_screen.dart/search_screen.dart';
import 'package:cozina/splash_screen.dart';
import 'package:cozina/widgets/bottom_bar.dart';
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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xffFE8B10),
          accentColor: Color(0xff42ABAE),
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen());
  }
}
