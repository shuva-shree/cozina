// import 'package:cozina/ants/ants.dart';s
import 'package:cozina/provider/provider.dart';
import 'package:cozina/screens/auth/login.dart';
import 'package:cozina/screens/food_makers_account/add_maker_kitchen.dart';
import 'package:cozina/screens/food_makers_account/earnings.dart';
import 'package:cozina/screens/food_makers_account/help_and_support.dart';
import 'package:cozina/screens/food_makers_account/maker_food_list.dart';
import 'package:cozina/screens/food_makers_account/maker_profile_details.dart';
import 'package:cozina/screens/list_screens/all_foods.dart';
import 'package:cozina/screens/list_screens/cuisine_food_list.dart';
import 'package:cozina/screens/maker_orders/maker_order_screen.dart';
import 'package:cozina/screens/orders/my_orders.dart';
import 'package:cozina/screens/profile/add_kitchen_screen.dart';
import 'package:cozina/screens/profile/kitchen_details.dart';
import 'package:cozina/screens/profile/profile.dart';
import 'package:cozina/screens/transactions/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/getwidget.dart';
import 'constants/constants.dart';

class FoodMakerMenuDrawer extends StatefulWidget {
  FoodMakerMenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _FoodMakerMenuDrawerState createState() => _FoodMakerMenuDrawerState();
}

class _FoodMakerMenuDrawerState extends State<FoodMakerMenuDrawer> {
  bool _value = true;
  bool _value1 = true;
  final valueProvider = ChangeNotifierProvider<ChangeValue>((ref) {
    return ChangeValue();
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, _) {
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
                          image: AssetImage('assets/images/man1.jpg'),
                          fit: BoxFit.cover),
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
                    color: greyColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Buyer\nAccount",
                        style: darkBlueColor16MediumTextStyle,
                      ),
                      // Switch(
                      //     activeColor: Theme.of(context).primaryColor,
                      //     value: _value,
                      //     onChanged: (bool newVal) {
                      //       setState(() {
                      //         _value = newVal;
                      //       });
                      //     }),
                      GFToggle(
                        onChanged: (val) {
                          context.read(valueProvider).setAccount(val!);
                        },
                        value: _value,
                        enabledThumbColor: primaryColor,
                        disabledTrackColor: primaryColor.withOpacity(0.3),
                        disabledThumbColor: primaryColor,
                        enabledTrackColor: primaryColor.withOpacity(0.3),
                        type: GFToggleType.ios,
                      ),
                      Text(
                        "Food Maker\nAccount",
                        style: darkBlueColor16MediumTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            watch(valueProvider).setVal == false
                ? Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('All Foods',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.fastfood,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => AllFoods()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('All Cuisines',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.restaurant,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => CuisinieFood()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('My Orders',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.checklist,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => MyOrders()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('My Transactions',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.monetization_on_rounded,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => TransactionList()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('Profile',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.supervised_user_circle_sharp,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => ProfilePage()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('Log Out',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.logout,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (ctx) => SignIn()));
                          },
                        ),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('Kitchen Online',
                              style: darkBlueColor16MediumTextStyle),
                          trailing: Switch(
                              activeColor: Theme.of(context).primaryColor,
                              value: _value1,
                              onChanged: (bool newVal) {
                                setState(() {
                                  _value1 = newVal;
                                });
                              }),
                        ),
                        // onTap: () {
                        //   Navigator.push(
                        //       context, MaterialPageRoute(builder: (ctx) => AllFoods()));
                        // },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('My Kitchen',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.kitchen,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => MakerProfilePage()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('My Foods',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.fastfood,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => MakerFoodList()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('My Orders',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.checklist,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => MakerOrderScreen()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('My Earning & Bank Details',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.money_rounded,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => MakerEarnings()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('My Transactions',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.monetization_on_rounded,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => TransactionList()));
                          },
                        ),
                      ),
                      // SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('My Profile',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.supervised_user_circle_sharp,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => MakerProfilePage()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('Help & Support',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.help,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => HelpAndSuppport()));
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: fixPadding),
                        child: ListTile(
                          minLeadingWidth: 0,
                          title: Text('Log Out',
                              style: darkBlueColor16MediumTextStyle),
                          leading: Icon(
                            Icons.logout,
                            color: darkBlueColor,
                          ),
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (ctx) => SignIn()));
                          },
                        ),
                      ),
                    ],
                  )
          ],
        ),
      );
    });
  }
}
