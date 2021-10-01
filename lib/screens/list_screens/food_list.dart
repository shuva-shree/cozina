import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/food_screen/food_screen.dart';
import 'package:cozina/widgets/column_builder.dart';
import 'package:flutter/material.dart';

class FoodsList extends StatelessWidget {
  FoodsList({Key? key}) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ColumnBuilder(
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
              child: GestureDetector(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
            ),
          );
        },
      ),
    );
  }
}
