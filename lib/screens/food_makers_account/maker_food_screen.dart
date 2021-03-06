import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/cart/cart_details.dart';
import 'package:cozina/screens/payment/payment_waiting.dart';
import 'package:cozina/widgets/carousel_slider.dart';
import 'package:cozina/widgets/column_builder.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class MakerFoodScreen extends StatefulWidget {
  const MakerFoodScreen({Key? key}) : super(key: key);

  @override
  _MakerFoodScreenState createState() => _MakerFoodScreenState();
}

class _MakerFoodScreenState extends State<MakerFoodScreen> {
  final reviewsList = [
    {
      'image': 'assets/images/man1.jpg',
      'name': 'George Smith',
      'date': 'June 25, 2020',
      'rating': 4,
      'review':
          'Marine rise restaurant sit amet, consectetur adipiscing elit, sed do eiusmod tempor rise sit.....',
    },
    {
      'image': 'assets/images/man3.jpg',
      'name': 'Grecy John',
      'date': 'June 28, 2020',
      'rating': 3,
      'review':
          'Marine rise restaurant sit amet, consectetur adipiscing elit, sed do eiusmod tempor rise sit.....',
    },
  ];
  final List<String> imageList = [
    'assets/images/image18.jpeg',
    'assets/images/image16.jpg',
    'assets/images/image19.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        title: Text(
          "Food#1234",
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
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.edit),
                widthSpace,
                Icon(Icons.delete),
              ],
            ),
          )
        ],
      ),
      // 'assets/images/image16.jpg'
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: fixPadding, vertical: fixPadding),
        child: ListView(
          children: [
            CustomIndicator(),

            heightSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Paneer Masala Dosa",
                  style: darkBlueColor24SemiBoldTextStyle,
                ),
                Text(
                  "\u{20B9}${120}",
                  style: darkBlueColor18SemiBoldTextStyle,
                ),
              ],
            ),
            heightSpace,
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       "Sharma Bhojans",
            //       style: primaryColor18SemiBoldTextStyle,
            //     ),
            //     Text(
            //       "3 kms away",
            //       style: greyColor15MediumTextStyle,
            //     )
            //   ],
            // ),
            // heightSpace,
            heightSpace,
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: blackColor,
                  ),
                  child: Text(
                    "South Indian",
                    style: whiteColor15BoldTextStyle,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: blackColor,
                  ),
                  child: Text(
                    "Veg",
                    style: whiteColor15BoldTextStyle,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Price + Commission",
                  style: greyColor15MediumTextStyle,
                ),
              ],
            ),
            heightSpace,
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
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // availableItem(),
            // SizedBox(
            //   height: 20,
            // ),
            foodDescription(),
            // SizedBox(
            //   height: 10,
            // ),
            Padding(
              padding: const EdgeInsets.only(left: fixPadding),
              child: Text(
                "Reviews",
                style: darkBlueColor22BoldTextStyle,
              ),
            ),
            heightSpace,
            heightSpace,
            reviewList(),
          ],
        ),
      ),
      // bottomNavigationBar: bottomNavBar(),
    );
  }

  foodDescription() {
    return Container(
      height: 200,
      padding: EdgeInsets.all(fixPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Food Description",
            style: darkBlueColor22BoldTextStyle,
          ),
          heightSpace,
          heightSpace,
          Text(
            "Paneer dosa is a delicious variation of dosa recipe with paneer filling. If you love dosa for  breakfast you will like this masala dosa with paneer filling a lot.Serve this delicious dosa with spicy chutney and sambar for a delicious and hearty breakfast! Here is how to make it at home an easy recipe and step by step pictures.",
            style: darkBlueColor15SemiBoldTextStyle,
            maxLines: 8,
            softWrap: true,
          ),
        ],
      ),
    );
  }

  reviewList() {
    return ColumnBuilder(
      itemCount: reviewsList.length,
      itemBuilder: (context, index) {
        final item = reviewsList[index];
        return Padding(
          padding: const EdgeInsets.fromLTRB(
            fixPadding,
            0.0,
            fixPadding,
            fixPadding * 2.0,
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(
              fixPadding * 1.5,
              fixPadding / 2,
              fixPadding / 2,
              fixPadding * 1.5,
            ),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(item['image'].toString()),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    widthSpace,
                    widthSpace,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                item['date'].toString(),
                                style: greyColor11MediumTextStyle,
                              ),
                            ],
                          ),
                          Text(
                            item['name'].toString(),
                            style: darkBlueColor14SemiBoldTextStyle,
                          ),
                          SizedBox(
                            height: 2.0,
                          ),
                          ratingStars(item['rating'].toString()),
                        ],
                      ),
                    ),
                  ],
                ),
                heightSpace,
                Text(
                  item['review'].toString(),
                  style: greyColor11MediumTextStyle,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  ratingStars(String r) {
    var rating = int.parse(r);
    assert(rating is int);
    //  rating = Integer.parseInt(rating);
    return Row(
      children: [
        (rating == 5 ||
                rating == 4 ||
                rating == 3 ||
                rating == 2 ||
                rating == 1)
            ? Icon(Icons.star_rounded, color: primaryColor, size: 16)
            : Icon(Icons.star_rounded, color: greyColor, size: 16),
        (rating == 5 || rating == 4 || rating == 3 || rating == 2)
            ? Icon(Icons.star_rounded, color: primaryColor, size: 16)
            : Icon(Icons.star_rounded, color: greyColor, size: 16),
        (rating == 5 || rating == 4 || rating == 3)
            ? Icon(Icons.star_rounded, color: primaryColor, size: 16)
            : Icon(Icons.star_rounded, color: greyColor, size: 16),
        (rating == 5 || rating == 4)
            ? Icon(Icons.star_rounded, color: primaryColor, size: 16)
            : Icon(Icons.star_rounded, color: greyColor, size: 16),
        (rating == 5)
            ? Icon(Icons.star_rounded, color: primaryColor, size: 16)
            : Icon(Icons.star_rounded, color: greyColor, size: 16),
      ],
    );
  }
}
