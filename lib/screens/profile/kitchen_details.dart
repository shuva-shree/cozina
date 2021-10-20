import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class KitchenDetails extends StatefulWidget {
  const KitchenDetails({Key? key}) : super(key: key);

  @override
  _KitchenDetailsState createState() => _KitchenDetailsState();
}

class _KitchenDetailsState extends State<KitchenDetails> {
  final List<String> imageList = [
    'assets/images/image18.jpeg',
    'assets/images/image16.jpg',
    'assets/images/image19.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      padding: EdgeInsets.symmetric(
          horizontal: fixPadding * 2, vertical: fixPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSpace,
            heightSpace,
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Edit Kitchen Details",
                  style: TextStyle(
                      color: accentColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: 30,
            ),
            Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      // border: Border.all(color: primaryColor, width: 2),
                      image: DecorationImage(
                          image: AssetImage("assets/images/image16.jpg"),
                          fit: BoxFit.cover)),
                  height: 100,
                  width: 100,
                  // child: Text(
                  //   "KITCHEN LOGO",
                  //   style: whiteColor15BoldTextStyle,
                  // ),
                )),
            SizedBox(
              height: 25,
            ),
            Text(
              "Name",
              style: greyColor15SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "John Foods",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Cuisines Services",
              style: greyColor15SemiBoldTextStyle,
            ),
            heightSpace,
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blackColor),
                  child: Text(
                    "South Indian",
                    style: whiteColor15BoldTextStyle,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blackColor),
                  child: Text(
                    "Thai",
                    style: whiteColor15BoldTextStyle,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blackColor),
                  child: Text(
                    "Continental",
                    style: whiteColor15BoldTextStyle,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: blackColor),
                  child: Text(
                    "Veg",
                    style: whiteColor15BoldTextStyle,
                  ),
                ),
              ],
            ),
            // heightSpace,
            // Text(
            //   "email@example.com",
            //   style: darkBlueColor18SemiBoldTextStyle,
            // ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Kitchen Address",
              style: greyColor15SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "111A, 3rd Floor, Galaxy Apartment, M.P Nagar, Zone II, Near Mata Mandir , Bhopal, \nPin:1110234",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Available for Home-delivery",
              style: greyColor15SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "Yes",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Cities covered in home delivery",
              style: greyColor16SemiBoldTextStyle,
            ),

            Text(
              "Bhopal,Mandideep and Bairagarh",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Home delivery charges",
              style: greyColor16SemiBoldTextStyle,
            ),

            Text(
              "50",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 20,
            ),

            SizedBox(
              height: 20,
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
                      child: Image.asset(url, fit: BoxFit.fill, width: 1400.0),
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
    );
  }
}
