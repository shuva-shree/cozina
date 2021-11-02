import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/food_screen/food_maker_screen.dart';
import 'package:cozina/screens/food_screen/food_screen.dart';
import 'package:flutter/material.dart';

import 'cuisine_food_list.dart';

class FoodMakersList extends StatefulWidget {
  const FoodMakersList({Key? key}) : super(key: key);

  @override
  _FoodMkaersListState createState() => _FoodMkaersListState();
}

class _FoodMkaersListState extends State<FoodMakersList> {
  final popularFoodMakersList = [
    {
      'image': 'assets/images/image17.jpg',
      'name': 'Sharma Bhojans',
      'distance': '3km',
      // 'cuisines':['South Indian','Thai'],
      'price': '14.99',
      'type': 'NonVeg',
    },
    {
      'image': 'assets/images/image17.jpg',
      'name': 'Sharma Bhojans',
      'distance': '3km',
      // 'cuisines':['South Indian','Thai'],
      'price': '14.99',
      'type': 'NonVeg',
    },
    {
      'image': 'assets/images/image16.jpg',
      'name': 'Sharma Bhojans',
      'distance': '3km',
      // 'cuisines':['South Indian','Thai'],
      'price': '14.99',
      'type': 'NonVeg',
    },
    {
      'image': 'assets/images/image16.jpg',
      'name': 'Sharma Bhojans',
      'distance': '3km',
      // 'cuisines':['South Indian','Thai'],
      'price': '14.99',
      'type': 'NonVeg',
    },
    {
      'image': 'assets/images/image17.jpg',
      'name': 'Sharma Bhojans',
      'distance': '3km',
      // 'cuisines':['South Indian','Thai'],
      'price': '14.99',
      'type': 'NonVeg',
    },
    {
      'image': 'assets/images/image16.jpg',
      'name': 'Sharma Bhojans',
      'distance': '3km',
      // 'cuisines':['South Indian','Thai'],
      'price': '14.99',
      'type': 'NonVeg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: fixPadding),
        // height: 250,
        child: GridView.builder(
            itemCount: popularFoodMakersList.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: width * 0.5,
                childAspectRatio: 1 / 1.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            itemBuilder: (BuildContext ctx, index) {
              final item = popularFoodMakersList[index];
              return Container(
                height: height * 0.43,
                width: width * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    // Hero(
                    //   tag: popularFoodMakersList[index],
                    // child:
                    // child:
                    Container(
                      height: height * 0.43,
                      width: width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: height * 0.19,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                image: AssetImage(item['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // ),
                          Container(
                            height: height * 0.24,
                            width: width * 0.5,
                            padding: EdgeInsets.all(fixPadding),
                            decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['name']!,
                                  style: darkBlueColor18SemiBoldTextStyle,
                                  softWrap: true,
                                  // maxLines: 1,
                                ),
                                // ),
                                heightSpace,
                                Container(
                                    child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 20,
                                      color: primaryColor,
                                    ),
                                  ],
                                )),
                                // heightSpace,
                                heightSpace,
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: blackColor,
                                      size: 20,
                                    ),
                                    Text(
                                      item["distance"]!,
                                      style: greyColor13MediumTextStyle,
                                    ),
                                  ],
                                ),
                                heightSpace,
                                heightSpace,
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: blackColor,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        child: Text(
                                          "South Indian",
                                          style: whiteColor15BoldTextStyle,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: blackColor,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        child: Text(
                                          "Veg",
                                          style: whiteColor15BoldTextStyle,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                heightSpace,
                                heightSpace,
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: height * 0.05,
                                    width: width * 0.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: primaryColor,
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (ctx) =>
                                                    CuisinieFood()));
                                      },
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(Icons.remove_red_eye,
                                              color: whiteColor),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "View Foods",
                                            style: whiteColor18BoldTextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
