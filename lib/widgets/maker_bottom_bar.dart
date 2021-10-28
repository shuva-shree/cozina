import 'dart:io';

import 'package:cozina/constants/constants.dart';
import 'package:cozina/provider/provider.dart';

import 'package:cozina/screens/food_makers_account/earnings.dart';
import 'package:cozina/screens/home/buyer_home_page.dart';
import 'package:cozina/screens/home/maker_home_page.dart';
import 'package:cozina/screens/maker_orders/maker_order_screen.dart';
import 'package:cozina/screens/orders/my_orders.dart';
import 'package:cozina/screens/profile/profile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

import '../foodMaker_drawer.dart';

class MakerBottomBar extends StatefulWidget {
  @override
  _MakerBottomBarState createState() => _MakerBottomBarState();
}

int currentIndex = 0;

class _MakerBottomBarState extends State<MakerBottomBar> {
  // final valueProvider = ChangeNotifierProvider<ChangeValue>((ref) {
  //   return ChangeValue();
  // });
  late DateTime currentBackPressTime;
  @override
  Widget build(BuildContext context) {
    // return Consumer(builder: (context, watch, _) {
    //   var abc = watch(valueProvider).value;
    //   print('$abc');
      return Scaffold(
        backgroundColor: bgColor,
    //     drawer: FoodMakerMenuDrawer(),
    //     appBar: AppBar(
    //       toolbarHeight: 70,
    //       iconTheme: IconThemeData(color: whiteColor),
    //       title: Container(
    //         height: 47,
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               "Cozina",
    //               style: whiteColor26BoldTextStyle,
    //             ),
    //             Expanded(
    //               child: new DropdownButtonHideUnderline(
    //                 child: DropdownButton<String>(
    //                   dropdownColor: primaryColor,
    //                   iconEnabledColor: whiteColor,
    //                   value: watch(valueProvider).value,
    //                   items: <DropdownMenuItem<String>>[
    //                     DropdownMenuItem(
    //                       child: Text(
    //                         "Buyer's Account",
    //                         style: whiteColor15BoldTextStyle,
    //                       ),
    //                       value: 'one',
    //                     ),
    //                     DropdownMenuItem(
    //                         child: Text(
    //                           "FoodMaker's account",
    //                           style: whiteColor15BoldTextStyle,
    //                         ),
    //                         value: 'two'),
    //                   ],
    //                   onChanged: (String? value) {
    //                     context.read(valueProvider).changeDropValue(value!);
    //                   },
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       // bottom: PreferredSize(
    //       //   preferredSize: Size.fromHeight(70),
    //       //   child:
    //       // ),
    //       actions: [
    //         IconButton(
    //           onPressed: () {
    //             // Navigator.of(context)
    //             //     .push(MaterialPageRoute(builder: (ctx) => SearchScreen()));
    //           },
    //           icon: Icon(Icons.notifications),
    //           iconSize: 35,
    //           color: whiteColor,
    //         ),
    //       ],
    //     ),
        body: WillPopScope(
          onWillPop: () async {
            bool backStatus = onWillPop();
            if (backStatus) {
              exit(0);
            }
            return false;
          },
          child: (currentIndex == 0)
              ? MakerHomePage()
              : (currentIndex == 1)
                  ? MakerOrderScreen()
                  : (currentIndex == 2)
                      ? MakerEarnings()
                      : MakerEarnings(),
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
                  'Home',
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
                  'assets/icons/earnings.png',
                  height: 25,
                  width: 25,
                  color: currentIndex == 2 ? primaryColor : darkBlueColor,
                ),
                title: Text(
                  'My Earnings',
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
