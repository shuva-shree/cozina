// import 'package:cozina/ants/ants.dart';s
import 'package:flutter/material.dart';

import 'constants/constants.dart';

class MenuDrawer extends StatefulWidget {
  MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MenuDrawerState createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
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
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (ctx) =>ProfilePage()));
              // },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title:
                  Text('All Cuisines', style: darkBlueColor16MediumTextStyle),
              // trailing: Icon(Icons.logout),
              // onTap: () {
              //   Navigator.of(context).pushReplacementNamed(LoginPage.routeName);
              // },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title: Text('My Orders', style: darkBlueColor16MediumTextStyle),
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (ctx) =>ProfilePage()));
              // },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title: Text('My Transactions',
                  style: darkBlueColor16MediumTextStyle),
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (ctx) =>ProfilePage()));
              // },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title: Text('Profile', style: darkBlueColor16MediumTextStyle),
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (ctx) =>ProfilePage()));
              // },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: fixPadding),
            child: ListTile(
              title: Text('Log Out', style: darkBlueColor16MediumTextStyle),
              // onTap: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (ctx) =>ProfilePage()));
              // },
            ),
          ),
        ],
      ),
    );
  }
}
