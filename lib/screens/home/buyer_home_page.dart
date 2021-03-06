import 'package:cozina/constants/constants.dart';
import 'package:cozina/buyer_drawer.dart';
import 'package:cozina/models/models.dart';
import 'package:cozina/provider/provider.dart';
import 'package:cozina/screens/cart/cart_details.dart';
import 'package:cozina/screens/food_screen/food_screen.dart';
import 'package:cozina/screens/home/maker_home_page.dart';
import 'package:cozina/screens/list_screens/cuisine_food_list.dart';
import 'package:cozina/screens/list_screens/food_list.dart';
import 'package:cozina/screens/list_screens/foodMaker_Screen.dart';
import 'package:cozina/screens/list_screens/popular_cuisines.dart';
import 'package:cozina/screens/search_screen.dart/search_city_screen.dart';
import 'package:cozina/screens/search_screen.dart/search_screen.dart';
import 'package:cozina/widgets/column_builder.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_riverpod/all.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPos = 0;
  late double height;
  late double width;

  final valueProvider = ChangeNotifierProvider<ChangeValue>((ref) {
    return ChangeValue();
  });

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Consumer(
      builder: (context, watch, _) {
        return Scaffold(
          backgroundColor: bgColor,
          body: Column(
            children: [
              searchTextField(),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  children: [
                    // searchTextField(),
                    heightSpace,
                    heightSpace,
                    foodsList(context),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        title('Popular Cuisines'),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: fixPadding, top: fixPadding),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => PopularCuisine()));
                            },
                            child: Text(
                              'View all',
                              style: TextStyle(
                                  color: accentColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),

                    foodsCategoryList(context),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        title('Popular Food Near You'),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => CuisinieFood()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: fixPadding * 2.0, top: fixPadding),
                            child: Text(
                              'View all',
                              style: TextStyle(
                                  color: accentColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                    heightSpace,
                    // SizedBox(
                    //   height: 25,
                    // ),
                    popularFoods(),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        title('Popular Food Makers Near You'),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => FoodMakerScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: fixPadding * 2.0, top: fixPadding),
                            child: Text(
                              'View all',
                              style: TextStyle(
                                  color: accentColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                      ],
                    ),
                    foodMakersList(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
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

  foodsList(context) {
    return Column(
      children: [
        Container(
          height: height * 0.3,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CarouselSlider.builder(
              itemCount: foodList.length,
              options: CarouselOptions(
                  aspectRatio: 16 / 7,
                  // autoPlay: true,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPos = index;
                    });
                  }),
              itemBuilder: (context, index, _) {
                return Container(
                  width: double.infinity,
                  // height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(foodList[index]["image"]!),
                      fit: BoxFit.fill,
                    ),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  // child: FittedBox(
                  //   fit: BoxFit.fill,
                  //   child: Image.asset(listPaths[index]),
                  // )
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: foodList.map((url) {
                int index = foodList.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPos == index
                        ? Color.fromRGBO(0, 0, 0, 0.9)
                        : Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
          ]
              // ),
              ),
        ),
      ],
    );
  }

  title(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding * 2.0,
        fixPadding * 2.0,
        fixPadding,
      ),
      child: Text(
        title,
        style: darkBlueColor18SemiBoldTextStyle,
      ),
    );
  }

  foodsCategoryList(context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      // height: height * 0.5,
      // width: 200,
      // child: SizedBox(
      height: height * 0.3,
      width: width * 0.51,
      child: ListView.builder(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        itemCount: foodCategoryList.length,
        itemBuilder: (context, index) {
          final item = foodCategoryList[index];
          return Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.3,
                width: width * 0.51,
                decoration: BoxDecoration(
                  //
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(item["image"]!),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Opacity(
                //   opacity: 0.8,
                //   child: Image.asset(
                //     item["image"]!,
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 7),
                height: height * 0.3,
                width: width * 0.51,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        blackColor.withOpacity(0.15),
                        blackColor.withOpacity(0.7),
                        blackColor
                      ],
                      stops: [0.2, 0.5, 0.85],
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(10),
                  // image: DecorationImage(
                  //   image: AssetImage(item["image"]!),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                // child: Image.asset(item["image"]!)
              ),
            ),

            Positioned(
              bottom: 25,
              left: 20,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(5),
                    //   color: Colors.black26,
                    // ),
                    child: Text(
                      "Cuisine",
                      style: whiteColor15BoldTextStyle,
                    ),
                  ),
                  heightSpace,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(5),
                    //   color: Colors.black26,
                    // ),
                    child: Text(
                      item['category']!,
                      style: whiteColor20BoldTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (ctx) => CuisinieFood()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: height * 0.05,
                      width: width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: primaryColor,
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Icon(Icons.remove_red_eye, color: whiteColor),
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
                ],
              ),
            ),

            // ),
          ]);
        },
      ),
      // ),
    );
  }

  popularFoods() {
    return ColumnBuilder(
      itemCount: popularFoodList.length,
      itemBuilder: (context, index) {
        final item = popularFoodList[index];
        return Padding(
          padding: EdgeInsets.fromLTRB(
              fixPadding * 2.0, 0.0, fixPadding * 2.0, fixPadding * 2.0),
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => FoodScreen()));
            },
            child: Container(
              padding: EdgeInsets.all(fixPadding),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: greyColor.withOpacity(0.1),
                    spreadRadius: 2.5,
                    blurRadius: 2.5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            image: AssetImage("assets/images/image16.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      widthSpace,
                      widthSpace,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  item['name']!,
                                  style: darkBlueColor18SemiBoldTextStyle,
                                ),
                              ],
                            ),
                            Text(
                              item['restaurant']!,
                              style: darkBlueColor15RegularTextStyle,
                            ),
                            heightSpace,
                            heightSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: blackColor,
                                  ),
                                  child: Text(
                                    "South Indian",
                                    style: whiteColor14BoldTextStyle,
                                  ),
                                ),
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
                                ))
                              ],
                            ),
                            SizedBox(
                              height: height * 0.015,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\u{20B9}${item['price']!}',
                                  style: darkBlueColor16MediumTextStyle,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 5.0,
                                    horizontal: fixPadding * 2.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: primaryColor.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    'Add ',
                                    style: primaryColor16SemiBoldTextStyle,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  heightSpace,
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  foodMakersList() {
    return Container(
      height: height * 0.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularFoodMakersList.length,
        itemBuilder: (context, index) {
          final item = popularFoodMakersList[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0,
              fixPadding * 2.0, 0,
              // fixPadding,
              fixPadding,
            ),

            child: Container(
              height: height * 0.5,
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
                              "3 kms away",
                              style: greyColor13MediumTextStyle,
                            ),
                          ],
                        ),
                        heightSpace,
                        heightSpace,
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: blackColor,
                              ),
                              child: Text(
                                "South Indian",
                                style: whiteColor14BoldTextStyle,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: blackColor,
                              ),
                              child: Text(
                                "Veg",
                                style: whiteColor14BoldTextStyle,
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
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => CuisinieFood()));
                              },
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(Icons.remove_red_eye, color: whiteColor),
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
            // ),
          );
        },
      ),
    );
  }
}
