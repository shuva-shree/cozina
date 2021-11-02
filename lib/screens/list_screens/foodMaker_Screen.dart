import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/list_screens/food_maker_list.dart';
import 'package:cozina/screens/list_screens/popular_cuisines.dart';
import 'package:flutter/material.dart';

class FoodMakerScreen extends StatelessWidget {
  const FoodMakerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
         titleSpacing: 0,
          leadingWidth: 40,
          centerTitle: false,
        leading:Padding(
            padding: const EdgeInsets.only(left: 5),
            child:  IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 22,
          ),),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            "Sharma Bhojans",
            style: whiteColor22BoldTextStyle,
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(child: FoodMakersList())
          ],
        ),
      ),
    );
  }
}
