import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/cart/cart_details.dart';
import 'package:cozina/screens/profile/add_kitchen_screen.dart';
import 'package:cozina/screens/profile/basic_details.dart';
import 'package:cozina/screens/search_screen.dart/search_city_screen.dart';
import 'package:cozina/screens/search_screen.dart/search_screen.dart';
import 'package:flutter/material.dart';

import '../../buyer_drawer.dart';
import 'kitchen_details.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late double height;
  late double width;
  String _value = 'one';
  var banner_page = 1.0;
  var value = 1;

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
          searchTextField(),
          heightSpace,
          DefaultTabController(
            length: 2, // length of tabs
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: TabBar(
                    indicatorColor: primaryColor,
                    labelColor: primaryColor,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Basic Details'),
                      Tab(text: 'Kitchen Details'),
                    ],
                  ),
                ),
                Container(
                  // height: MediaQuery.of(context).size.height - 220,
                  height: 485, //height of TabBarView
                  // decoration: BoxDecoration(
                  //     border: Border(
                  //         top: BorderSide(color: Colors.grey, width: 0.5))),
                  child: TabBarView(
                    children: <Widget>[
                      BasicDetails(),
                      //  AddKitchenScreen()
                      KitchenDetails()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    //       Expanded(child: value == 1 ? BasicDetails() : KitchenDetails()),
    //     ],
    //   ),
    // );
  }

  searchTextField() {
    return
        //  Padding(
        // padding: EdgeInsets.all(fixPadding * 2.0),
        // child:
        InkWell(
            // onTap: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => Search()),
            // ),
            child: Container(
                height: 45,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: whiteColor,
                  // borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: greyColor.withOpacity(0.1),
                      spreadRadius: 2.5,
                      blurRadius: 2.5,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.location_pin),
                    Text(
                      "Mumbai",
                      style: darkBlueColor18SemiBoldTextStyle,
                    ),
                    SizedBox(
                      width: width * 0.4,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => SearchCityScreen()));
                      },
                      child: Text(
                        "Change",
                        style: TextStyle(
                            color: accentColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ))
            //   ),
            );
  }
}
