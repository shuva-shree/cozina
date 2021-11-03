import 'dart:async';

import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/orders/food_complete.dart';
import 'package:cozina/screens/orders/food_prep_order.dart';
import 'package:cozina/widgets/bill_summary.dart';
import 'package:cozina/widgets/order_details.dart';
import 'package:flutter/material.dart';

class ConfirmedOrder extends StatefulWidget {
  const ConfirmedOrder({Key? key}) : super(key: key);

  @override
  _ConfirmedOrderState createState() => _ConfirmedOrderState();
}

class _ConfirmedOrderState extends State<ConfirmedOrder> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => FoodPrepOrder()));
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
        titleSpacing: 0,
        leadingWidth: 40,
        centerTitle: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
              size: 22,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          orderBox(),
          OrderDetails(),
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
          BillSummary(),
        ],
      ),
    );
  }

  orderBox() {
    return Padding(
      padding: EdgeInsets.all(fixPadding),
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: fixPadding, horizontal: fixPadding * 2),
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
              "Order Confirmed",
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
}
