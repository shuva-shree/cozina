import 'dart:async';

import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/maker_order_status/accepted.dart';
import 'package:cozina/screens/orders/food_complete.dart';
import 'package:cozina/widgets/bill_summary.dart';
import 'package:flutter/material.dart';

class ApprovalOrder extends StatefulWidget {
  const ApprovalOrder({Key? key}) : super(key: key);

  @override
  _ApprovalOrderState createState() => _ApprovalOrderState();
}

class _ApprovalOrderState extends State<ApprovalOrder> {
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
      ),
      body: ListView(
        children: [
          orderBox(),
          orderDetails(),
          // Align(
          //   alignment: Alignment.centerRight,
          //   child: Container(
          //     padding: EdgeInsets.symmetric(
          //         horizontal: fixPadding * 2, vertical: fixPadding),
          //     child: Text(
          //       "View on Map",
          //       style: TextStyle(color: accentColor, fontSize: 20),
          //     ),
          //   ),
          // ),
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
              Text(
                "Order Status",
                style: greyColor14MediumTextStyle,
              ),

              heightSpace,
              Text(
                "Waiting for Approval",
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  denyButton(context, "Deny Order"),
                  approvalButton(context, "Accept Order"),
                ],
              ),

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
            // Text(
            //   "Pick-up Address",
            //   style: greyColor16SemiBoldTextStyle,
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // Text(
            //   "111A, 3rd Floor, Galaxy Apartment, M.P Nagar, Zone II, Near Mata Mandir , Bhopal, \nPin:1110234",
            //   style: darkBlueColor18SemiBoldTextStyle,
            // ),
            // SizedBox(
            //   height: 20,
            // ),
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
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AcceptedOrder()));
        },
        child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width / 2.7,
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

  denyButton(context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding / 2,
        vertical: fixPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AcceptedOrder()));
        },
        child: Container(
          height: 45,
          width: MediaQuery.of(context).size.width / 2.7,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            // color: greyColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(color: blackColor, width: 2),
            // boxShadow: [
            //   BoxShadow(
            //     color: greyColor.withOpacity(0.2),
            //     spreadRadius: 2.5,
            //     blurRadius: 2.5,
            //   ),
            // ],
          ),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
