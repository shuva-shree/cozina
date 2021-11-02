import 'dart:async';

import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/orders/food_complete.dart';
import 'package:flutter/material.dart';

class FoodPrepOrder extends StatefulWidget {
  const FoodPrepOrder({Key? key}) : super(key: key);

  @override
  _FoodPrepOrderState createState() => _FoodPrepOrderState();
}

class _FoodPrepOrderState extends State<FoodPrepOrder> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FoodPrepComplete()));
    });
    super.initState();
  }

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
      ),
      body: ListView(
        children: [
          orderBox(),
          orderDetails(),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: fixPadding * 2, vertical: fixPadding),
              child: Text(
                "View on Map",
                style: TextStyle(color: accentColor, fontSize: 20),
              ),
            ),
          ),
          billSummary(),
        ],
      ),
    );
  }

  orderBox() {
    return Padding(
      padding: EdgeInsets.all(fixPadding),
      child: Container(
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Status",
                  style: greyColor14MediumTextStyle,
                ),
                SizedBox(
                  width: 120,
                ),
                Text(
                  "Full Details",
                  style: TextStyle(color: accentColor, fontSize: 17),
                ),
              ],
            ),
            heightSpace,
            Text(
              "Food Preparation Started",
              style: darkBlueColor20BoldTextStyle,
            ),
            // heightSpace,
            heightSpace,
            Divider(
                // color: primaryColor,
                // thickness: 2,
                ),
            heightSpace,
            // heightSpace,
            Row(
              children: [
                Icon(
                  Icons.access_time_sharp,
                  color: primaryColor,
                  size: 30,
                ),
                widthSpace,
                widthSpace,
                Text(
                  "ETA : Food will prepare in 15 minutes \ni.e 10:25 am",
                  style: darkBlueColor16MediumTextStyle,
                ),
              ],
            ),

            heightSpace,
            // orderDetails(),
          ],
        ),
      ),
    );
  }

  orderDetails() {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: fixPadding * 2, vertical: fixPadding),
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
            "Amount",
            style: greyColor15SemiBoldTextStyle,
          ),
          heightSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\u{20B9} 550 Success",
                style: darkBlueColor18SemiBoldTextStyle,
              ),
              Text(
                "View Transaction",
                style: TextStyle(color: accentColor, fontSize: 17),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Ordered From",
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
            "Order Type",
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
          Text(
            "Pick-up Address",
            style: greyColor16SemiBoldTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "111A, 3rd Floor, Galaxy Apartment, M.P Nagar, Zone II, Near Mata Mandir , Bhopal, \nPin:1110234",
            style: darkBlueColor18SemiBoldTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  billSummary() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // decoration:
        //     BoxDecoration(border: Border.all(color: primaryColor, width: 2)),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: fixPadding * 2),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bill Summary",
                      style: greyColor15MediumTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                billDetails(240, 2),
                heightSpace,
                billDetails(120, 1),
                SizedBox(
                  height: 10,
                ),
                totalAmount(),
                // heightSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }

  billDetails(int amount, int quantity) {
    return Container(
      padding: EdgeInsets.all(fixPadding * 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Paneer Dosa Masala",
                style: darkBlueColor18MediumTextStyle,
              ),
              Text(
                '\u{20B9}$amount',
                style: darkBlueColor16MediumTextStyle,
              ),
            ],
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Quantity: x 0${quantity}",
                style: darkBlueColor13RegularTextStyle,
              )),
        ],
      ),
    );
  }

  totalAmount() {
    return Container(
      padding: EdgeInsets.all(fixPadding * 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tax",
                style: darkBlueColor18MediumTextStyle,
              ),
              Text(
                '\u{20B9}${10}',
                style: darkBlueColor16MediumTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          heightSpace,
          Divider(
              // color: primaryColor,
              // thickness: 1.5,
              ),
          SizedBox(
            height: 30,
          ),
          heightSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Amout Payable",
                style: primaryColor18SemiBoldTextStyle,
              ),
              Text(
                '\u{20B9}${550}',
                style: primaryColor18SemiBoldTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
