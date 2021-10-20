import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/list_screens/food_list.dart';
import 'package:flutter/material.dart';

class AllFoods extends StatelessWidget {
  const AllFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              "All Foods",
              style: whiteColor20BoldTextStyle,
            ),
          )),
      body: Column(
        children: [
          heightSpace,
          heightSpace,
          Padding(
            padding: EdgeInsets.all(fixPadding),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: fixPadding),
                  child: Text(
                    "452 Foods in South Indian Cuisine",
                    style: greyColor13MediumTextStyle,
                  ),
                )),
          ),
          heightSpace,
          heightSpace,
          Expanded(child: FoodsList()),
        ],
      ),
    );
  }
}
