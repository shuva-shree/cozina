import 'package:cozina/constants/constants.dart';
import 'package:cozina/widgets/column_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late double height;
  late double width;

  final foodList = [
    {'image': 'assets/images/image14.jpg'},
    {'image': 'assets/images/image15.jpg'},
  ];

  final foodCategoryList = [
    {
      'image': 'assets/images/image8.jpg',
      'category': 'Fast Food',
    },
    {
      'image': 'assets/images/image9.jpg',
      'category': 'South Indian',
    },
    {
      'image': 'assets/images/image11.jpg',
      'category': 'Chinese',
    },
    {
      'image': 'assets/images/image11.jpg',
      'category': 'Diet Food',
    },
    {
      'image': 'assets/images/image12.jpeg',
      'category': 'Italian',
    },
  ];

  final offerList = [
    {'image': 'assets/images/image10.jpeg'},
    {'image': 'assets/images/image12.jpeg'},
  ];

  final popularFoodList = [
    {
      'name': 'Paneer Masala Dosa',
      'restaurant': 'Sharma Bhojans',
      'rating': '4.3',
      'type': 'South Indian',
      'quantity': '1',
      'ratedPeopleCount': '198',
      'price': '120',
      'image': 'assets/images/image16.jpg',
      'address': '1124, Old Church Street, New york, USA',
    },
    {
      'name': 'Paneer Masala Dosa',
      'restaurant': 'Sharma Bhojans',
      'rating': '4.3',
      'type': 'South Indian',
      'quantity': '1',
      'ratedPeopleCount': '198',
      'price': '120',
      'image': 'assets/images/image16.jpg',
      'address': '1124, Old Church Street, New york, USA',
    },
    {
      'name': 'Paneer Masala Dosa',
      'restaurant': 'Sharma Bhojans',
      'rating': '4.3',
      'type': 'South Indian',
      'quantity': '1',
      'ratedPeopleCount': '198',
      'price': '120',
      'image': 'assets/images/image16.jpg',
      'address': '1124, Old Church Street, New york, USA',
    },
  ];

  final todaySpecialList = [
    {
      'image': 'assets/images/image8.jpg',
      'name': 'Chicken italiano cheezy periperi pizza',
      'price': '14.99',
      'type': 'NonVeg',
    },
    {
      'image': 'assets/images/image9.jpg',
      'name': 'Paneer Khurchan',
      'price': '19.99',
      'type': 'Veg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      drawer: Drawer(),
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: whiteColor),
        title: Text(
          "Cozina",
          style: whiteColor26BoldTextStyle,
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
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          heightSpace,
          searchTextField(),
          heightSpace,
          foodsList(),
          title('Popular Cuisines'),
          foodsCategoryList(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              title('Offers For You'),
              Padding(
                padding: const EdgeInsets.only(right: fixPadding * 2.0),
                child: Text(
                  'see all',
                  style: primaryColor12MediumTextStyle,
                ),
              ),
            ],
          ),
          // offersList(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              title('Restaurants Near You'),
              InkWell(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AllRestaurants()),
                // ),
                child: Padding(
                  padding: const EdgeInsets.only(right: fixPadding * 2.0),
                  child: Text(
                    'see all',
                    style: primaryColor12MediumTextStyle,
                  ),
                ),
              ),
            ],
          ),
          popularFoods(),
          // title('Today\'s Special'),
          // todaysSpecialList(),
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
                      width: 70,
                    ),
                    Text(
                      "Change",
                      style: TextStyle(
                          color: accentColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
                // TextField(
                //   enabled: false,
                //   cursorColor: primaryColor,
                //   decoration: InputDecoration(
                //     prefixIcon: Icon(
                //       Icons.search,
                //       color: Colors.blueGrey[800],
                //       size: 20,
                //     ),
                //     hintText: 'Search for restaurant,food...',
                //     hintStyle: greyColor14MediumTextStyle,
                //     border: UnderlineInputBorder(borderSide: BorderSide.none),
                //   ),
                // ),
                )
            //   ),
            );
  }

  foodsList() {
    return Container(
      height: 160,
      child: ListView.builder(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        scrollDirection: Axis.horizontal,
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          final item = foodList[index];
          return Padding(
            padding: EdgeInsets.fromLTRB(
                index == 0 ? fixPadding * 2.0 : fixPadding,
                0.0,
                index == foodList.length - 1 ? fixPadding * 2.0 : fixPadding,
                0.0),
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
          );
        },
      ),
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
              left: 20,
              child: Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? fixPadding * 2.0 : 0.0,
                  right: index == foodCategoryList.length - 1
                      ? fixPadding * 2.0
                      : fixPadding * 1.5,
                ),
                child: InkWell(
                  // onTap: () => Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => AllRestaurants()),
                  // ),
                  child: Column(
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
                          "View Orders",
                          style: whiteColor18BoldTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]);
        },
      ),
      // ),
    );
  }

  // offersList() {
  //   return Container(
  //     height: height * 0.15,
  //     child: ListView.builder(
  //       physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
  //       scrollDirection: Axis.horizontal,
  //       itemCount: offerList.length,
  //       itemBuilder: (context, index) {
  //         final item = offerList[index];
  //         return Padding(
  //           padding: EdgeInsets.only(
  //             left: index == 0 ? fixPadding * 2.0 : 0.0,
  //             right: index == foodCategoryList.length - 1
  //                 ? fixPadding * 2.0
  //                 : fixPadding * 1.5,
  //           ),
  //           child: InkWell(
  //             // onTap: () => Navigator.push(
  //             //   context,
  //             //   MaterialPageRoute(
  //             //     builder: (context) => ParticularItem(
  //             //       tag: offerList[index],
  //             //     ),
  //             //   ),
  //             // ),
  //             child: Container(
  //               margin: EdgeInsets.symmetric(vertical: 5.0),
  //               height: height * 0.10,
  //               width: width * 0.62,
  //               padding: EdgeInsets.all(fixPadding),
  //               decoration: BoxDecoration(
  //                 color: whiteColor,
  //                 borderRadius: BorderRadius.circular(10),
  //                 boxShadow: [
  //                   BoxShadow(
  //                     color: greyColor.withOpacity(0.1),
  //                     spreadRadius: 2.5,
  //                     blurRadius: 2.5,
  //                   ),
  //                 ],
  //               ),
  //               child: Hero(
  //                 tag: offerList[index],
  //                 child: Image.asset(
  //                   item['image']!,
  //                   fit: BoxFit.cover,
  //                 ),
  //               ),
  //             ),
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

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
                        // tag: popularFoodList[index],

                        // padding: EdgeInsets.all(5.0),
                        // decoration: BoxDecoration(
                        //   color: Color(0xffe6e6e6),
                        //   borderRadius: BorderRadius.circular(5.0),
                        // ),
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
                                // Row(
                                //   children: [
                                //     Text(
                                //       item['rating']!,
                                //       style: primaryColor12SemiBoldTextStyle,
                                //     ),
                                //     widthSpace,
                                //     Icon(
                                //       Icons.star,
                                //       color: primaryColor,
                                //       size: 15,
                                //     ),
                                //   ],
                                // ),
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
                                      color: primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
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
                  // Row(
                  //   children: [
                  //     widthSpace,
                  //     widthSpace,
                  //     Icon(
                  //       Icons.location_on,
                  //       color: primaryColor,
                  //       size: 15,
                  //     ),
                  //     widthSpace,
                  //     Text(
                  //       item['address']!,
                  //       style: greyColor12MediumTextStyle,
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

//   todaysSpecialList() {
//     return ColumnBuilder(
//       itemCount: todaySpecialList.length,
//       itemBuilder: (context, index) {
//         final item = todaySpecialList[index];
//         return Padding(
//           padding: const EdgeInsets.fromLTRB(
//             fixPadding * 2.0,
//             0.0,
//             fixPadding * 2.0,
//             fixPadding,
//           ),
//           child: InkWell(
//             onTap: () => Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => ParticularItem(
//                   tag: todaySpecialList[index],
//                   image: item['image'],
//                   name: item['name'],
//                   price: item['price'],
//                   foodType: item['foodType'],
//                 ),
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: Column(
//                     children: [
//                       Hero(
//                         tag: todaySpecialList[index],
//                         child: Container(
//                           height: height * 0.16,
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.only(
//                               topLeft: Radius.circular(10),
//                               topRight: Radius.circular(10.0),
//                             ),
//                             image: DecorationImage(
//                               image: AssetImage(item['image']),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         height: height * 0.07,
//                         width: double.infinity,
//                         padding: EdgeInsets.all(fixPadding),
//                         decoration: BoxDecoration(
//                           color: lightBlueColor,
//                           borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(10),
//                             bottomRight: Radius.circular(10.0),
//                           ),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   right: fixPadding * 12.0),
//                               child: Text(
//                                 item['name'],
//                                 style: darkBlueColor14MediumTextStyle,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Positioned(
//                   top: 5.0,
//                   right: 5.0,
//                   child: Text(
//                     '${item['price']}\$',
//                     style: whiteColor15BoldTextStyle,
//                   ),
//                 ),
//                 Positioned(
//                   right: 10.0,
//                   bottom: 20,
//                   child: Container(
//                     padding: EdgeInsets.all(2.0),
//                     decoration: BoxDecoration(
//                       color: Colors.transparent,
//                       border: Border.all(
//                           color: item['type'] == 'Veg'
//                               ? Colors.green
//                               : Colors.red),
//                     ),
//                     child: Container(
//                       height: 6.0,
//                       width: 6.0,
//                       decoration: BoxDecoration(
//                         color:
//                             item['type'] == 'Veg' ? Colors.green : Colors.red,
//                         shape: BoxShape.circle,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
}
