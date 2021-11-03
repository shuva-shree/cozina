import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class MakerOrderDetails extends StatelessWidget {
  const MakerOrderDetails({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: fixPadding),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: fixPadding * 1.5),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            "Order No.",
            style: greyColor15SemiBoldTextStyle,
          ),
          heightSpace,
          Text(
            "ORD12345678",
            style: darkBlueColor18SemiBoldTextStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Date & Time of Order",
            style: greyColor15SemiBoldTextStyle,
          ),
          heightSpace,
          Text(
            "12.08.21 10:00am",
            style: darkBlueColor18SemiBoldTextStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Amount you will earn",
            style: greyColor15SemiBoldTextStyle,
          ),
          heightSpace,
          Text(
            "\u{20B9} 550 ",
            style: darkBlueColor18SemiBoldTextStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Ordered By",
            style: greyColor15SemiBoldTextStyle,
          ),
          heightSpace,
          Text(
            "John Smith",
            style: darkBlueColor18SemiBoldTextStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Ordered Type",
            style: greyColor15SemiBoldTextStyle,
          ),
          heightSpace,
          Text(
            "Self Pick-Up",
            style: darkBlueColor18SemiBoldTextStyle,
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),),
    );
  }
}
 
   