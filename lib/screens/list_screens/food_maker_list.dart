import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/food_screen/food_maker_screen.dart';
import 'package:cozina/screens/food_screen/food_screen.dart';
import 'package:flutter/material.dart';

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
                maxCrossAxisExtent: 200,
                childAspectRatio: 1 / 1.75,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemBuilder: (BuildContext ctx, index) {
              final item = popularFoodMakersList[index];
              return Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    // Hero(
                    //   tag: popularFoodMakersList[index],
                    //   child:
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
                      height: height * 0.22,
                      width: 200,
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
                          // Padding(
                          //   padding:
                          //       const EdgeInsets.only(right: fixPadding * 12.0),
                          //   child:
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
                          heightSpace,
                          Text(
                            item["distance"]!,
                            style: greyColor13MediumTextStyle,
                          ),
                          heightSpace,
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.black54.withOpacity(0.2),
                                ),
                                child: Text(
                                  "South Indian",
                                  style: darkBlueColor15MediumTextStyle,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.black54.withOpacity(0.2),
                                ),
                                child: Text(
                                  "Veg",
                                  style: darkBlueColor15MediumTextStyle,
                                ),
                              ),
                            ],
                          ),
                          heightSpace,
                          heightSpace,
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => FoodMakerScreen()));
                            },
                            child: Align(
                              alignment: Alignment.center,
                              child: Container(
                                alignment: Alignment.center,
                                height: 35,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: primaryColor,
                                ),
                                child: Text(
                                  "View Foods",
                                  style: whiteColor18BoldTextStyle,
                                ),
                              ),
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
