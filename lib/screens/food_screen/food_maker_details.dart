import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class FoodMakerDetails extends StatefulWidget {
  const FoodMakerDetails({Key? key}) : super(key: key);

  @override
  _FoodMakerDetailsState createState() => _FoodMakerDetailsState();
}

class _FoodMakerDetailsState extends State<FoodMakerDetails> {
  final List<String> imageList = [
    'assets/images/image18.jpeg',
    'assets/images/image16.jpg',
    'assets/images/image19.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      // appBar: AppBar(
      //   iconTheme: IconThemeData(color: whiteColor),
      //   title: Text(
      //     "Food Item",
      //     style: whiteColor26BoldTextStyle,
      //   ),
      //   leading: IconButton(
      //     onPressed: () => Navigator.pop(context),
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //     ),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Icon(Icons.shopping_cart),
      //     )
      //   ],
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(fixPadding * 2),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 30,
              // ),
              Text(
                "Kitchen Name",
                style: greyColor16MediumTextStyle,
              ),
              heightSpace,
              Text(
                "John Foods",
                style: darkBlueColor20BoldTextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Cuisines Service",
                style: greyColor16MediumTextStyle,
              ),
              heightSpace,
              heightSpace,
              Row(
                children: [
                  cuisineType("South Indian"),
                  widthSpace,
                  SizedBox(
                    width: 10,
                  ),
                  cuisineType("Thai"),
                  widthSpace,
                  SizedBox(
                    width: 10,
                  ),
                  cuisineType("Continental"),
                  widthSpace,
                  SizedBox(
                    width: 10,
                  ),
                  cuisineType("Veg"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Cuisines Service",
                style: greyColor16MediumTextStyle,
              ),
              heightSpace,
              Text(
                "Bhopal, Bairagarh & Mandideep",
                style: darkBlueColor18SemiBoldTextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Home Delivery Charges",
                style: greyColor16MediumTextStyle,
              ),
              heightSpace,
              Text(
                "\u{20B9} 50",
                style: darkBlueColor18SemiBoldTextStyle,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Kitchen Photos",
                style: greyColor16MediumTextStyle,
              ),
              heightSpace,
              GFCarousel(
                passiveIndicator: whiteColor,
                activeIndicator: primaryColor,
                pagination: true,
                enableInfiniteScroll: true,
                pagerSize: 6,
                height: 250,
                scrollDirection: Axis.horizontal,
                items: imageList.map(
                  (url) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child:
                            Image.asset(url, fit: BoxFit.fill, width: 1400.0),
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {
                  setState(() {
                    // ignore: unnecessary_statements
                    index;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  cuisineType(String title) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: blackColor,
      ),
      child: Text(
        title,
        style: whiteColor13BoldTextStyle,
      ),
    );
  }
}
