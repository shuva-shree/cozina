import 'dart:async';

import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/maker_order_status/food_prepared.dart';
import 'package:cozina/screens/orders/food_complete.dart';
import 'package:cozina/widgets/bill_summary.dart';
import 'package:flutter/material.dart';

class FoodPrepStarted extends StatefulWidget {
  const FoodPrepStarted({Key? key}) : super(key: key);

  @override
  _FoodPrepStartedState createState() => _FoodPrepStartedState();
}

class _FoodPrepStartedState extends State<FoodPrepStarted> {
  // @override
  // void initState() {
  //   Timer(Duration(seconds: 5), () {
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => FoodPrepComplete()));
  //   });
  //   super.initState();
  // }

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
            padding: const EdgeInsets.only(right: fixPadding),
            child: Icon(Icons.warning_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          orderBox(),
          orderDetails(),
          BillSummary(),
          heightSpace,
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
        child: Padding(
          padding: EdgeInsets.all(fixPadding * 2),
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

              approvalButton(context, "Update Status : Food Is Prepared"),

              // heightSpace,
              // orderDetails(),
            ],
          ),
        ),
      ),
    );
  }

  orderDetails() {
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
        ),
      ),
    );
  }

 

  approvalButton(context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding / 2,
        vertical: fixPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FoodPreparationCompleted()));
        },
        child: Container(
          // margin: EdgeInsets.fromLTRB(
          //   fixPadding,
          //   fixPadding,
          //   fixPadding, 0,
          //   // fixPadding,
          // ),
          height: 45,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: primaryColor.withOpacity(0.2),
                spreadRadius: 2.5,
                blurRadius: 2.5,
              ),
            ],
          ),
          child: Text(
            title,
            style: whiteColor20BoldTextStyle,
          ),
        ),
      ),
    );
  }
}
