import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/food_makers_account/maker_food_screen.dart';
import 'package:cozina/screens/food_screen/food_screen.dart';
import 'package:cozina/widgets/column_builder.dart';
import 'package:flutter/material.dart';

class MakerFoodList extends StatefulWidget {
  MakerFoodList({Key? key}) : super(key: key);

  @override
  _MakerFoodListState createState() => _MakerFoodListState();
}

class _MakerFoodListState extends State<MakerFoodList> {
  String _value = 'one';
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
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        title: Text(
          "#Order1234",
          style: whiteColor22BoldTextStyle,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 22,
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.all(fixPadding),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => MakerFoodScreen(),
                    ),
                  );
                },
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: primaryColor,
                      ),
                      widthSpace,
                      Text(
                        "Add a Food",
                        style: primaryColor15BoldTextStyle,
                      ),
                    ],
                  ),
                ),
              ))
        ],
      ),
      body: Column(
        children: [
          heightSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              dropDownItems("All Cuisines"),
              dropDownItems("Sort by Relevance"),
            ],
          ),
          heightSpace,
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: ColumnBuilder(
                itemCount: popularFoodList.length,
                itemBuilder: (context, index) {
                  final item = popularFoodList[index];
                  return Padding(
                    padding: EdgeInsets.fromLTRB(fixPadding * 2.0, 0.0,
                        fixPadding * 2.0, fixPadding * 1.5),

                    // onTap: () => Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) =>
                    //         RestaurantDetails(tag: restaurantList[index]),
                    //   ),
                    // ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => MakerFoodScreen()));
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
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/image16.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                widthSpace,
                                widthSpace,
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            item['name']!,
                                            style:
                                                darkBlueColor18SemiBoldTextStyle,
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
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: blackColor,
                                            ),
                                            child: Text(
                                              item['type']!,
                                              style: whiteColor13BoldTextStyle,
                                            ),
                                          ),
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
                                            style:
                                                darkBlueColor16MediumTextStyle,
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
                                          // Container(
                                          //   padding: EdgeInsets.symmetric(
                                          //     vertical: 5.0,
                                          //     horizontal: fixPadding * 2.0,
                                          //   ),
                                          //   decoration: BoxDecoration(
                                          //     color: primaryColor.withOpacity(0.1),
                                          //     borderRadius:
                                          //         BorderRadius.circular(10.0),
                                          //   ),
                                          //   child: Text(
                                          //     'Add',
                                          //     style: primaryColor16SemiBoldTextStyle,
                                          //   ),
                                          // ),
                                          // Container(
                                          //   decoration: BoxDecoration(
                                          //     boxShadow: [
                                          //       BoxShadow(
                                          //           color: greyColor.withOpacity(0.3),
                                          //           spreadRadius: 2,
                                          //           blurRadius: 3),
                                          //     ],
                                          //     color: primaryColor.withOpacity(0.8),
                                          //   ),
                                          //   alignment: Alignment.center,
                                          //   height: 30,
                                          //   width: 90,
                                          //   child: Text(
                                          //     "Add to Cart",
                                          //     style: whiteColor15BoldTextStyle,
                                          //   ),
                                          // ),
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
              ),
            ),
          ),
        ],
      ),

      // ),
    );
  }

  dropDownItems(String title) {
    return DropdownButton<String>(
      dropdownColor: bgColor,
      value: _value,
      items: <DropdownMenuItem<String>>[
        DropdownMenuItem(
          child: Text(
            title,
            style: blackColor15SemiBoldTextStyle,
          ),
          value: 'one',
        ),
        // DropdownMenuItem(
        //     child: Text(
        //       "FoodMaker's account",
        //       style: whiteColor15BoldTextStyle,
        //     ),
        //     value: 'two'),
      ],
      onChanged: (String? value) {
        setState(() => _value = value!);
      },
    );
  }
}
