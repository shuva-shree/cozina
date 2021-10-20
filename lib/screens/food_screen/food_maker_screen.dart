import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/food_screen/food_maker_details.dart';
import 'package:cozina/screens/list_screens/food_list.dart';
import 'package:flutter/material.dart';

class FoodMakerScreen extends StatefulWidget {
  const FoodMakerScreen({Key? key}) : super(key: key);

  @override
  _FoodMakerScreenState createState() => _FoodMakerScreenState();
}

class _FoodMakerScreenState extends State<FoodMakerScreen> {
  late double height;
  String isSelected = 'Fast food';
  bool isTap1 = false;
  bool isTap2 = false;
  bool isTap3 = false;

  final menuList = [
    {'foodType': 'Fast food'},
    {'foodType': 'Starter'},
  ];
  var value = 1;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    return DefaultTabController(
        // Added
        length: 2, // Added
        initialIndex: 0,
        child: Scaffold(
          backgroundColor: bgColor,

          appBar: AppBar(
            // elevation: 0,
            backgroundColor: primaryColor,
            iconTheme: IconThemeData(color: whiteColor),
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back_ios,
                size: 22,
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                "Food Item",
                style: whiteColor20BoldTextStyle,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.shopping_cart),
              )
            ],
            bottom: TabBar(
              indicatorColor: primaryColor,
              labelColor: whiteColor,
              tabs: [
                Tab(
                  text: 'Food',
                ),
                Tab(
                  text: 'Food Maker Details',
                ),
                // Tab(text: 'BIRDS', icon: Icon(Icons.search)),
              ],
            ),
          ),

          
          body:
              //  Column(
              //   children: [
              // Container(
              //   padding: EdgeInsets.all(fixPadding * 2),
              //   child: Column(
              //     children: [
              // heightSpace,
              // menu(),
              // heightSpace,
              // heightSpace,
              // ],
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       value = 1;
              //     });
              //   },
              //   child: Container(
              //     padding: EdgeInsets.symmetric(horizontal: fixPadding),
              //     alignment: Alignment.center,
              //     decoration: BoxDecoration(
              //       color: value == 1 ? lightBlueColor : Colors.transparent,
              //       borderRadius: BorderRadius.circular(15.0),
              //     ),
              //     child: Text(
              //       "Food",
              //       style: TextStyle(
              //         color: value == 1 ? darkBlueColor : greyColor,
              //         fontSize: 18,
              //         fontWeight: FontWeight.w600,
              //       ),
              //     ),
              //   ),
              // ),
              //   GestureDetector(
              //     onTap: () {
              //       setState(() {
              //         value = 2;
              //       });
              //     },
              //     child: Container(
              //       padding: EdgeInsets.symmetric(horizontal: fixPadding),
              //       alignment: Alignment.center,
              //       decoration: BoxDecoration(
              //         color: value == 2 ? lightBlueColor : Colors.transparent,
              //         borderRadius: BorderRadius.circular(15.0),
              //       ),
              //       child: Text(
              //         "FoodMaker Details",
              //         style: TextStyle(
              //           color: value == 2 ? darkBlueColor : greyColor,
              //           fontSize: 18,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ),
              //     // Column(
              //     //   children: [
              //     //     Text(
              //     //       "Food",
              //     //       style: darkBlueColor18MediumTextStyle,
              //     //     ),
              //     //     heightSpace,
              //     //     heightSpace,
              //     //     GestureDetector(
              //     //       onTap: () {
              //     //         setState(() {
              //     //           value = 1;
              //     //         });
              //     //       },
              //     //       child: Container(
              //     //         height: 15,
              //     //         color: value == 1 ? primaryColor : greyColor,
              //     //         width: 170,
              //     //       ),
              //     //     )
              //     //   ],
              //     // ),
              //     // Column(
              //     //   children: [
              //     //     Text(
              //     //       "Food Makers Details",
              //     //       style: darkBlueColor18MediumTextStyle,
              //     //     ),
              //     //     heightSpace,
              //     //     heightSpace,
              //     //     GestureDetector(
              //     //       onTap: () {
              //     //         setState(() {
              //     //           value = 2;
              //     //         });
              //     //       },
              //     //       child: Container(
              //     //         height: 15,
              //     //         color: value == 2 ? primaryColor : greyColor,
              //     //         width: 170,
              //     //       ),
              //     //     )
              //     //   ],
              //     // )
              //     //   ],
              //     // ),
              //   ),
              // ],
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              TabBarView(children: [FoodsList(), FoodMakerDetails()]),
          //     ],
          //   ),
          // ],
        ));
    //     ),
    //   ],
    // ),
    // );
  }

  menu() {
    return Container(
      height: height * 0.04,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: menuList.length,
        itemBuilder: (context, index) {
          final item = menuList[index];
          return Padding(
            padding: EdgeInsets.fromLTRB(
                index == 0 ? fixPadding * 2.0 : fixPadding, 0.0, 0.0, 0.0),
            child: InkWell(
              borderRadius: BorderRadius.circular(15.0),
              onTap: () {
                setState(() {
                  isSelected = item['foodType']!;
                });
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: fixPadding),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected == item['foodType']
                      ? lightBlueColor
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Text(
                  item['foodType']!,
                  style: TextStyle(
                    color: isSelected == item['foodType']
                        ? darkBlueColor
                        : greyColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
