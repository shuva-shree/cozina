import 'package:cozina/constants/constants.dart';
import 'package:cozina/maker_orders/maker_active_orders.dart';
import 'package:cozina/maker_orders/maker_completed_orders.dart';
import 'package:cozina/maker_orders/maker_order_request.dart';
import 'package:cozina/screens/orders/active_order.dart';
import 'package:cozina/screens/orders/completed_order.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../foodMaker_drawer.dart';

class MakerOrderScreen extends StatefulWidget {
  const MakerOrderScreen({Key? key}) : super(key: key);

  @override
  _MakerOrderScreenState createState() => _MakerOrderScreenState();
}

class _MakerOrderScreenState extends State<MakerOrderScreen>
    with TickerProviderStateMixin {
  String _value = 'one';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: FoodMakerMenuDrawer(),
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
        actions: [
          IconButton(
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (ctx) => SearchScreen()));
            },
            icon: Icon(Icons.notifications),
            iconSize: 35,
            color: whiteColor,
          ),
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
                    // isScrollable: true,

                    controller: tabController,
                    indicatorColor: primaryColor,
                    labelColor: primaryColor,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Order Request',
                      ),
                      Tab(text: 'Active'),
                      Tab(text: 'Completed'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // height:
              //     MediaQuery.of(context).size.height - 210, //height of TabBarView
              // decoration: BoxDecoration(
              //     border: Border(
              //         top: BorderSide(color: Colors.grey, width: 0.5))),
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                dragStartBehavior: DragStartBehavior.down,
                controller: tabController,
                children: <Widget>[
                  MakerOrderRequest(),
                 
                      MakerActiveOrder(),
                   
                  MakeOrderComplete(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  late TabController tabController = TabController(
    initialIndex: 0,
    length: 3,
    vsync: this,
  );
  @override
  void initState() {
    super.initState();
    late TabController tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  // dropDownItems(String title) {
  //   return DropdownButton<String>(
  //     dropdownColor: bgColor,
  //     value: _value,
  //     items: <DropdownMenuItem<String>>[
  //       DropdownMenuItem(
  //         child: Text(
  //           title,
  //           style: blackColor15SemiBoldTextStyle,
  //         ),
  //         value: 'one',
  //       ),
  //       // DropdownMenuItem(
  //       //     child: Text(
  //       //       "FoodMaker's account",
  //       //       style: whiteColor15BoldTextStyle,
  //       //     ),
  //       //     value: 'two'),
  //     ],
  //     onChanged: (String? value) {
  //       setState(() => _value = value!);
  //     },
  //   );
  // }
}
