import 'package:cozina/splash_screen.dart';
import 'package:cozina/widgets/buyer_bottom_bar.dart';
import 'package:cozina/widgets/maker_bottom_bar.dart';
// import 'package:cozina/screens/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(child: MyApp()),
  );
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
          // fontFamily: 'Montserrat',
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen());
  }
}
