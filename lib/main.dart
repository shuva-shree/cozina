import 'package:cozina/cart/cart_details.dart';
import 'package:cozina/cart/checkout.dart';
import 'package:cozina/screens/auth/login.dart';
import 'package:cozina/screens/food_screen/food_maker_details.dart';
import 'package:cozina/screens/food_screen/food_maker_screen.dart';
import 'package:cozina/screens/food_screen/food_screen.dart';
import 'package:cozina/screens/home/home_page.dart';
import 'package:cozina/screens/list_screens/popular_cuisines.dart';
import 'package:cozina/screens/orders/confirmed_order.dart';
import 'package:cozina/screens/orders/food_prep_oreder.dart';
import 'package:cozina/screens/orders/my_orders.dart';
import 'package:cozina/screens/payment/payment_success.dart';
import 'package:cozina/screens/payment/payment_waiting.dart';
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
        home: FoodPrepOrder());
  }
}
