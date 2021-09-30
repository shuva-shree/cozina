import 'package:cozina/constants/constants.dart';
import 'package:cozina/drawer.dart';
import 'package:cozina/models/models.dart';
import 'package:cozina/screens/list_screens/popular_cuisines.dart';
import 'package:cozina/widgets/column_builder.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double height;
  late double width;
  String _value = 'one';
  var banner_page = 1.0;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      drawer: MenuDrawer(),
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: whiteColor),
        title:
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            Text(
          "Cozina",
          style: whiteColor26BoldTextStyle,
        ),

        // ],
        // ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: DropdownButton<String>(
            value: _value,
            items: <DropdownMenuItem<String>>[
              DropdownMenuItem(
                child: Text(
                  "Buyer's Account",
                  style: whiteColor15BoldTextStyle,
                ),
                value: 'one',
              ),
              DropdownMenuItem(child: Text('two'), value: 'two'),
            ],
            onChanged: (String? value) {
              setState(() => _value = value!);
            },
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 35,
            color: whiteColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            iconSize: 33,
            color: whiteColor,
          )
        ],
      ),
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
                foodsList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    title('Popular Cuisines'),
                    InkWell(
                      // onTap: () => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => AllRestaurants()),
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: fixPadding * 2.0),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => PopularCuisine()));
                          },
                          child: Text(
                            'View all',
                            style: primaryColor14MediumTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                foodsCategoryList(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    title('Popular Food Near You'),
                    InkWell(
                      // onTap: () => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => AllRestaurants()),
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: fixPadding * 2.0),
                        child: Text(
                          'View all',
                          style: primaryColor14MediumTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
                popularFoods(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    title('Popular Food Makers Near You'),
                    InkWell(
                      // onTap: () => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => AllRestaurants()),
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: fixPadding * 2.0),
                        child: Text(
                          'View all',
                          style: primaryColor14MediumTextStyle,
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
                      style: blackColor18BoldTextStyle,
                    ),
                    SizedBox(
                      width: width * 0.4,
                    ),
                    Text(
                      "Change",
                      style: TextStyle(
                          color: accentColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ))
            //   ),
            );
  }

  foodsList() {
    return Column(
      children: [
        Container(
          height: 160,
          child:
              //         CarouselSlider.builder(
              //            options:  CarouselOptions(
              //     height: 400,
              //     aspectRatio: 16/9,
              //     viewportFraction: 0.8,
              //     initialPage: 0,
              //     enableInfiniteScroll: true,
              //     reverse: false,
              //     autoPlay: true,
              //     autoPlayInterval: Duration(seconds: 3),
              //     autoPlayAnimationDuration: Duration(milliseconds: 800),
              //     autoPlayCurve: Curves.fastOutSlowIn,
              //     enlargeCenterPage: true,
              //     // onPageChanged: callbackFunction,
              //     scrollDirection: Axis.horizontal,),
              //           itemCount: foodList.length,
              //           itemBuilder: Builder(
              //                 builder: (BuildContext context) {
              //                   return Container(
              //                     width: MediaQuery.of(context).size.width,
              //                     margin: EdgeInsets.symmetric(horizontal: 10.0),
              //                     decoration: BoxDecoration(
              //                       color: Colors.green,
              //                     ),
              //                     // child: Image.network(
              //                     //   imgUrl,
              //                     //   fit: BoxFit.fill,
              //                     // ),
              //                   );
              //                 },
              //               ),
              //  )): (index) {
              //               setState(() {
              //                 _current = index;
              //               });
              //             },
              //             items: foodList.map((imgUrl) {}).toList(),

              ListView.builder(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            scrollDirection: Axis.horizontal,
            itemCount: foodList.length,
            itemBuilder: (context, index) {
              final item = foodList[index];
              return Padding(
                padding: EdgeInsets.fromLTRB(
                    index == 0 ? fixPadding * 2.0 : fixPadding,
                    0.0,
                    index == foodList.length - 1
                        ? fixPadding * 2.0
                        : fixPadding,
                    0.0),
                child: GestureDetector(
                  onTap: () {
                    banner_page = index.toDouble();
                  },
                  child: Container(
                    height: 30,
                    width: width - 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(item['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        DotsIndicator(
          dotsCount: foodList.length,
          position: banner_page,
          decorator: DotsDecorator(
            color: Colors.black87, // Inactive color
            activeColor: Colors.redAccent,
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

  foodsCategoryList() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      // height: height * 0.5,
      // width: 200,
      // child: SizedBox(
      height: height * 0.2,
      width: 200,
      child: ListView.builder(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        itemCount: foodCategoryList.length,
        itemBuilder: (context, index) {
          final item = foodCategoryList[index];
          return Stack(children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 7),
                height: height * 0.2,
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                child: Image.asset(item["image"]!)),
            Positioned(
              top: 20,
              left: 35,
              // child: Padding(
              //   padding: EdgeInsets.only(
              //     left: index == 0 ? fixPadding * 2.0 : 0.0,
              //     right: index == foodCategoryList.length - 1
              //         ? fixPadding * 2.0
              //         : fixPadding * 1.5,
              //   ),
              child: InkWell(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AllRestaurants()),
                // ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cuisine",
                      style: greyColor16SemiBoldTextStyle,
                    ),
                    heightSpace,
                    Text(
                      item['category']!,
                      style: whiteColor18BoldTextStyle,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black54,
                      ),
                      child: Text(
                        "View Food",
                        style: whiteColor18BoldTextStyle,
                      ),
                    ),
                  ],
                ),
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
            // onTap: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) =>
            //         RestaurantDetails(tag: restaurantList[index]),
            //   ),
            // ),
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
                        width: 70,
                        height: 100,
                        child: Image.asset(
                          item['image']!,
                          height: 70,
                          width: 80,
                          fit: BoxFit.cover,
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
                              style: darkBlueColor15MediumTextStyle,
                            ),
                            heightSpace,
                            heightSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.black54.withOpacity(0.2),
                                  ),
                                  child: Text(
                                    item['type']!,
                                    style: darkBlueColor13MediumTextStyle,
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
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\u{20B9}${item['price']!}',
                                  style: darkBlueColor16MediumTextStyle,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: greyColor.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 3),
                                    ],
                                    color: primaryColor.withOpacity(0.8),
                                  ),
                                  alignment: Alignment.center,
                                  height: 30,
                                  width: 90,
                                  child: Text(
                                    "Add to Cart",
                                    style: whiteColor15BoldTextStyle,
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
      height: 340,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: popularFoodMakersList.length,
        itemBuilder: (context, index) {
          final item = popularFoodMakersList[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(
              fixPadding * 2.0,
              fixPadding * 2.0,
              fixPadding,
              fixPadding,
            ),
            child: InkWell(
              // onTap: () => Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => ParticularItem(
              //       tag: todaySpecialList[index],
              //       image: item['image'],
              //       name: item['name'],
              //       price: item['price'],
              //       foodType: item['foodType'],
              //     ),
              //   ),
              // ),
              child:
                  // Column(
                  //   children: [
                  Container(
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
                        color: lightBlueColor,
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
                          Align(
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
