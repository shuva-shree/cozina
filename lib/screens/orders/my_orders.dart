import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/cart/cart_details.dart';
import 'package:cozina/screens/orders/active_order.dart';
import 'package:cozina/screens/orders/completed_order.dart';
import 'package:cozina/screens/search_screen.dart/search_city_screen.dart';
import 'package:cozina/screens/search_screen.dart/search_screen.dart';
import 'package:flutter/material.dart';

import '../../drawer.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> with TickerProviderStateMixin {
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
      drawer: MenuDrawer(),
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
                child: DropdownButton<String>(
                  dropdownColor: primaryColor,
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
          // Container(
          //   padding: EdgeInsets.all(fixPadding * 2),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Column(
          //         children: [
          //           Text(
          //             "Active Order",
          //             style: darkBlueColor18MediumTextStyle,
          //           ),
          //           heightSpace,
          //           heightSpace,
          //           GestureDetector(
          //             onTap: () {
          //               setState(() {
          //                 value = 1;
          //               });
          //             },
          //             child: Container(
          //               height: 15,
          //               color: value == 1 ? primaryColor : greyColor,
          //               width: 170,
          //             ),
          //           )
          //         ],
          //       ),
          //       Column(
          //         children: [
          //           Text(
          //             "Completed order",
          //             style: darkBlueColor18MediumTextStyle,
          //           ),
          //           heightSpace,
          //           heightSpace,
          //           GestureDetector(
          //             onTap: () {
          //               setState(() {
          //                 value = 2;
          //               });
          //             },
          //             child: Container(
          //               height: 15,
          //               color: value == 2 ? primaryColor : greyColor,
          //               width: 170,
          //             ),
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // ),
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
                        text: 'Active Order',
                      ),
                      Tab(text: 'Completed Order'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              dropDownItems("All Status"),
              dropDownItems("From Date"),
              dropDownItems("To Date"),
            ],
          ),
          Container(
            height: 435, //height of TabBarView
            // decoration: BoxDecoration(
            //     border: Border(
            //         top: BorderSide(color: Colors.grey, width: 0.5))),
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                Expanded(child: ActiveOrder()),
                Expanded(child: CompletedOrder())
              ],
            ),
          ),
          // Expanded(child: value == 1 ?  : ),
        ],
      ),
    );
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
                  borderRadius: BorderRadius.circular(10),
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

  dropDownItems(String title) {
    return DropdownButton<String>(
      dropdownColor: blackColor,
      value: _value,
      items: <DropdownMenuItem<String>>[
        DropdownMenuItem(
          child: Text(
            title,
            style: blackColor15SemiBoldTextStyle,
          ),
          value: 'one',
        ),
        // DropdownMenuItem(
        //     child: Text(
        //       "FoodMaker's account",
        //       style: whiteColor15BoldTextStyle,
        //     ),
        //     value: 'two'),
      ],
      onChanged: (String? value) {
        setState(() => _value = value!);
      },
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
