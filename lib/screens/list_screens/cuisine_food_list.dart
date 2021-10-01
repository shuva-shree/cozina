import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/list_screens/food_list.dart';
import 'package:flutter/material.dart';

class CuisinieFood extends StatelessWidget {
  const CuisinieFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: whiteColor),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "Cuisine: South Indian",
              style: whiteColor26BoldTextStyle,
            ),
          )),
      body: Column(
        children: [
          heightSpace,
          heightSpace,
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "452 Foods in South Indian Cuisine",
                style: greyColor13MediumTextStyle,
              )),
          heightSpace,
          heightSpace,
          Expanded(child: FoodsList()),
        ],
      ),
    );
  }
}
