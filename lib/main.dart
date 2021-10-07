import 'package:cozina/screens/cart/cart_details.dart';
import 'package:cozina/screens/food_screen/food_maker_screen.dart';
import 'package:cozina/screens/orders/order_history.dart';
import 'package:cozina/screens/profile/add_kitchen_screen.dart';
import 'package:cozina/screens/profile/give_kitchen_details.dart';
import 'package:cozina/screens/transactions/transaction_details.dart';
import 'package:cozina/splash_screen.dart';
import 'package:cozina/widgets/bottom_bar.dart';
import 'package:cozina/widgets/stepper_page.dart';
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
