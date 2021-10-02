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
  var value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        title: Text(
          "Food Item",
          style: whiteColor26BoldTextStyle,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(fixPadding * 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Food",
                      style: darkBlueColor18MediumTextStyle,
                    ),
                    heightSpace,
                    heightSpace,
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          value = 1;
                        });
                      },
                      child: Container(
                        height: 15,
                        color: value == 1 ? primaryColor : greyColor,
                        width: 170,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Food Makers Details",
                      style: darkBlueColor18MediumTextStyle,
                    ),
                    heightSpace,
                    heightSpace,
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          value = 2;
                        });
                      },
                      child: Container(
                        height: 15,
                        color: value == 2 ? primaryColor : greyColor,
                        width: 170,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Flexible(child: value == 1 ? FoodsList() : FoodMakerDetails()),
        ],
      ),
    );
  }
}
