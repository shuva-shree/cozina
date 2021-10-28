import 'dart:io';

import 'package:cozina/constants/constants.dart';
import 'package:cozina/provider/provider.dart';
import 'package:cozina/screens/cart/cart_details.dart';
import 'package:cozina/screens/home/buyer_home_page.dart';
import 'package:cozina/screens/orders/my_orders.dart';
import 'package:cozina/screens/profile/profile.dart';
import 'package:cozina/screens/search_screen.dart/search_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

int currentIndex = 0;

class _BottomBarState extends State<BottomBar> {
  final valueProvider = ChangeNotifierProvider<ChangeValue>((ref) {
    return ChangeValue();
  });

  late DateTime currentBackPressTime;
  @override
  Widget build(BuildContext context) {
    // return Consumer(builder: (context, watch, _) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 70,
      //   iconTheme: IconThemeData(color: whiteColor),
      //   title: Container(
      //     height: 47,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Text(
      //           "Cozina",
      //           style: whiteColor26BoldTextStyle,
      //         ),
      //         Expanded(
      //           child: new DropdownButtonHideUnderline(
      //             child: DropdownButton<String>(
      //                 dropdownColor: primaryColor,
      //                 iconEnabledColor: whiteColor,
      //                 value: watch(valueProvider).value,
      //                 items: <DropdownMenuItem<String>>[
      //                   DropdownMenuItem(
      //                     child: Text(
      //                       "Buyer's Account",
      //                       style: whiteColor15BoldTextStyle,
      //                     ),
      //                     value: 'one',
      //                   ),
      //                   DropdownMenuItem(
      //                       child: Text(
      //                         "FoodMaker's account",
      //                         style: whiteColor15BoldTextStyle,
      //                       ),
      //                       value: 'two'),
      //                 ],
      //                 onChanged: (String? value) {
      //                   context.read(valueProvider).changeDropValue(value!);
      //                   // setState(() {
      //                   //   _value = value!;
      //                   // });
      //                 }),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      //   // bottom: PreferredSize(
      //   //   preferredSize: Size.fromHeight(70),
      //   //   child:
      //   // ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         Navigator.of(context)
      //             .push(MaterialPageRoute(builder: (ctx) => SearchScreen()));
      //       },
      //       icon: Icon(Icons.search),
      //       iconSize: 35,
      //       color: whiteColor,
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         Navigator.of(context)
      //             .push(MaterialPageRoute(builder: (ctx) => CartDetails()));
      //       },
      //       icon: Icon(Icons.shopping_cart),
      //       iconSize: 33,
      //       color: whiteColor,
      //     )
      //   ],
      // ),
      body: WillPopScope(
        onWillPop: () async {
          bool backStatus = onWillPop();
          if (backStatus) {
            exit(0);
          }
          return false;
        },
        child: (currentIndex == 0)
            ? HomeScreen()
            : (currentIndex == 1)
                ? MyOrders()
                : (currentIndex == 2)
                    ? ProfilePage()
                    : ProfilePage(),
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: BottomNavyBar(
          showElevation: true,
          containerHeight: 20,
          selectedIndex: currentIndex,
          onItemSelected: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavyBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                height: 25,
                width: 25,
                color: currentIndex == 0 ? primaryColor : darkBlueColor,
              ),
              title: Text(
                ' Foods',
                style: TextStyle(color: primaryColor),
              ),
              activeColor: primaryColor.withOpacity(0.1),
            ),
            BottomNavyBarItem(
              icon: Image.asset(
                'assets/icons/myOrder2.png',
                height: 27,
                width: 27,
                color: currentIndex == 1 ? primaryColor : darkBlueColor,
              ),
              title: Text(
                ' My Orders',
                style: TextStyle(color: primaryColor),
              ),
              activeColor: primaryColor.withOpacity(0.1),
            ),
            BottomNavyBarItem(
              icon: Image.asset(
                'assets/icons/user.png',
                height: 25,
                width: 25,
                color: currentIndex == 2 ? primaryColor : darkBlueColor,
              ),
              title: Text(
                ' Profile',
                style: TextStyle(color: primaryColor),
              ),
              activeColor: primaryColor.withOpacity(0.1),
            ),
          ],
        ),
      ),
    );
    // });
  }

  onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(
        msg: 'Press Back Once Again to Exit.',
        textColor: whiteColor,
        backgroundColor: darkBlueColor,
      );
      return false;
    }
    return true;
  }
}
