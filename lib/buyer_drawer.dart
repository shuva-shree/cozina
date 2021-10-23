// import 'package:cozina/ants/ants.dart';s
import 'package:cozina/screens/auth/login.dart';
import 'package:cozina/screens/list_screens/all_foods.dart';
import 'package:cozina/screens/list_screens/cuisine_food_list.dart';
import 'package:cozina/screens/orders/my_orders.dart';
import 'package:cozina/screens/profile/profile.dart';
import 'package:cozina/screens/transactions/transaction_list.dart';
import 'package:flutter/material.dart';

import 'constants/constants.dart';

class BuyerMenuDrawer extends StatefulWidget {
  BuyerMenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _BuyerMenuDrawerState createState() => _BuyerMenuDrawerState();
}

class _BuyerMenuDrawerState extends State<BuyerMenuDrawer> {
  bool _value = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: whiteColor,
              ),
              child: Column(children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/profile2.png'),
                    ),
                  ),
                ),
                heightSpace,
                heightSpace,
                heightSpace,
                Text(
                  "Michale Jordan",
                  style: primaryColor20SemiBoldTextStyle,
                ),
              ])),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 15),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: primaryColor, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Buyer\nAccount",
                      style: darkBlueColor16MediumTextStyle,
                    ),
                    Switch(
                        activeColor: Theme.of(context).primaryColor,
                        value: _value,
                        onChanged: (bool newVal) {
                          setState(() {
                            _value = newVal;
                          });
                        }),
                    Text(
                      "Food Maker\nAccount",
                      style: darkBlueColor16MediumTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title: Text('All Foods', style: darkBlueColor16MediumTextStyle),
              leading: Icon(
                Icons.fastfood,
                color: darkBlueColor,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => AllFoods()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title:
                  Text('All Cuisines', style: darkBlueColor16MediumTextStyle),
              leading: Icon(
                Icons.restaurant,
                color: darkBlueColor,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => CuisinieFood()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title: Text('My Orders', style: darkBlueColor16MediumTextStyle),
              leading: Icon(
                Icons.checklist,
                color: darkBlueColor,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => MyOrders()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title: Text('My Transactions',
                  style: darkBlueColor16MediumTextStyle),
              leading: Icon(
                Icons.monetization_on_rounded,
                color: darkBlueColor,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => TransactionList()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title: Text('Profile', style: darkBlueColor16MediumTextStyle),
              leading: Icon(
                Icons.supervised_user_circle_sharp,
                color: darkBlueColor,
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => ProfilePage()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title: Text('Log Out', style: darkBlueColor16MediumTextStyle),
              leading: Icon(
                Icons.logout,
                color: darkBlueColor,
              ),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => SignIn()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
