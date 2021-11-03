import 'dart:async';

import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/orders/food_complete.dart';
import 'package:cozina/widgets/bill_summary.dart';
import 'package:cozina/widgets/maker_order_details.dart';
import 'package:flutter/material.dart';

class OrderCompleted extends StatefulWidget {
  const OrderCompleted({Key? key}) : super(key: key);

  @override
  _OrderCompletedState createState() => _OrderCompletedState();
}

class _OrderCompletedState extends State<OrderCompleted> {
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: fixPadding),
            child: Icon(Icons.warning_outlined),
          )
        ],
      ),
      body: ListView(
        children: [
          orderBox(),
          MakerOrderDetails(),
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
        padding: EdgeInsets.symmetric(
            horizontal: fixPadding * 1.5, vertical: fixPadding * 2),
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
            heightSpace,
            Text(
              "Order Completed",
              style: darkBlueColor18MediumTextStyle,
            ),
            heightSpace,
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
        // onTap: () {
        //   _showDialog(context);
        // },
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
