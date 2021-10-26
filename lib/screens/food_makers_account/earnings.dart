import 'dart:io';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/cart/cart_details.dart';
import 'package:cozina/screens/food_makers_account/bank_details.dart';
import 'package:cozina/screens/food_makers_account/earnings_details.dart';
import 'package:cozina/screens/home/buyer_home_page.dart';
import 'package:cozina/screens/orders/active_order.dart';
import 'package:cozina/screens/orders/completed_order.dart';
import 'package:cozina/screens/profile/profile.dart';
import 'package:cozina/screens/search_screen.dart/search_city_screen.dart';
import 'package:cozina/screens/search_screen.dart/search_screen.dart';
import 'package:cozina/widgets/buyer_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../buyer_drawer.dart';

class MakerEarnings extends StatefulWidget {
  const MakerEarnings({Key? key}) : super(key: key);

  @override
  _MakerEarningsState createState() => _MakerEarningsState();
}

class _MakerEarningsState extends State<MakerEarnings>
    with TickerProviderStateMixin {
  late double height;
  late double width;
  String _value = 'one';
  var banner_page = 1.0;
  var value = 1;

  late TabController tabController = TabController(
    initialIndex: 0,
    length: 2,
    vsync: this,
  );
  @override
  void initState() {
    super.initState();
    late TabController tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      drawer: BuyerMenuDrawer(),
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: whiteColor),
        title: Container(
          height: 47,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Cozina",
                style: whiteColor26BoldTextStyle,
              ),
              Expanded(
                child: new DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    dropdownColor: primaryColor,
                    iconEnabledColor: whiteColor,
                    value: _value,
                    items: <DropdownMenuItem<String>>[
                      DropdownMenuItem(
                        child: Text(
                          "Buyer's Account",
                          style: whiteColor15BoldTextStyle,
                        ),
                        value: 'one',
                      ),
                      DropdownMenuItem(
                          child: Text(
                            "FoodMaker's account",
                            style: whiteColor15BoldTextStyle,
                          ),
                          value: 'two'),
                    ],
                    onChanged: (String? value) {
                      setState(() => _value = value!);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        // bottom: PreferredSize(
        //   preferredSize: Size.fromHeight(70),
        //   child:
        // ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => SearchScreen()));
            },
            icon: Icon(Icons.search),
            iconSize: 35,
            color: whiteColor,
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => CartDetails()));
            },
            icon: Icon(Icons.shopping_cart),
            iconSize: 33,
            color: whiteColor,
          )
        ],
      ),
      body: Column(
        children: [
          DefaultTabController(
            length: 2, // length of tabs
            initialIndex: 0,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: TabBar(
                    controller: tabController,
                    indicatorColor: primaryColor,
                    labelColor: primaryColor,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'My Earnings',
                      ),
                      Tab(text: 'My Bank'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     dropDownItems("All Status"),
          //     dropDownItems("From Date"),
          //     dropDownItems("To Date"),
          //   ],
          // ),
          Expanded(
            // height: 435, //height of TabBarView
            // decoration: BoxDecoration(
            //     border: Border(
            //         top: BorderSide(color: Colors.grey, width: 0.5))),
            child: TabBarView(
              controller: tabController,
              children: <Widget>[EarningDetails(), BankDetails()],
            ),
          ),
          // Expanded(child: value == 1 ?  : ),
        ],
      ),
      // bottomNavigationBar: BottomBar(),
    );
  }
}

 
// class OrderBottomBar extends StatefulWidget {
//   @override
//   _BottomBarState createState() => _BottomBarState();
// }

// int currentIndex = 1;

// class _BottomBarState extends State<BottomBar> {
//   late DateTime currentBackPressTime;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: WillPopScope(
//         onWillPop: () async {
//           bool backStatus = onWillPop();
//           if (backStatus) {
//             exit(0);
//           }
//           return false;
//         },
//         child: (currentIndex == 0)
//             ? HomeScreen()
//             : (currentIndex == 1)
//                 ? MakerEarnings()
//                 : (currentIndex == 2)
//                     ? ProfilePage()
//                     : ProfilePage(),
//       ),
//       bottomNavigationBar: Container(
//         height: 60,
//         child: BottomNavyBar(
//           showElevation: true,
//           containerHeight: 20,
//           selectedIndex: currentIndex,
//           onItemSelected: (index) {
//             setState(() {
//               currentIndex = index;
//             });
//           },
//           items: [
//             BottomNavyBarItem(
//               icon: Image.asset(
//                 'assets/icons/home.png',
//                 height: 25,
//                 width: 25,
//                 color: currentIndex == 0 ? primaryColor : darkBlueColor,
//               ),
//               title: Text(
//                 ' Foods',
//                 style: TextStyle(color: primaryColor),
//               ),
//               activeColor: primaryColor.withOpacity(0.1),
//             ),
//             BottomNavyBarItem(
//               icon: Image.asset(
//                 'assets/icons/MakerOrder2.png',
//                 height: 27,
//                 width: 27,
//                 color: currentIndex == 1 ? primaryColor : darkBlueColor,
//               ),
//               title: Text(
//                 ' Maker Orders',
//                 style: TextStyle(color: primaryColor),
//               ),
//               activeColor: primaryColor.withOpacity(0.1),
//             ),
//             BottomNavyBarItem(
//               icon: Image.asset(
//                 'assets/icons/user.png',
//                 height: 25,
//                 width: 25,
//                 color: currentIndex == 2 ? primaryColor : darkBlueColor,
//               ),
//               title: Text(
//                 ' Profile',
//                 style: TextStyle(color: primaryColor),
//               ),
//               activeColor: primaryColor.withOpacity(0.1),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   onWillPop() {
//     DateTime now = DateTime.now();
//     if (currentBackPressTime == null ||
//         now.difference(currentBackPressTime) > Duration(seconds: 2)) {
//       currentBackPressTime = now;
//       Fluttertoast.showToast(
//         msg: 'Press Back Once Again to Exit.',
//         textColor: whiteColor,
//         backgroundColor: darkBlueColor,
//       );
//       return false;
//     }
//     return true;
//   }
// }
