import 'dart:async';

import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/maker_order_status/food_prep_started.dart';
import 'package:cozina/screens/orders/food_complete.dart';
import 'package:flutter/material.dart';

class AcceptedOrder extends StatefulWidget {
  const AcceptedOrder({Key? key}) : super(key: key);

  @override
  _AcceptedOrderState createState() => _AcceptedOrderState();
}

class _AcceptedOrderState extends State<AcceptedOrder> {
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
          )
        ],
      ),
      body: ListView(
        children: [
          orderBox(),
          orderDetails(),
          billSummary(),
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
                "Order Accepted",
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

              InkWell(
                borderRadius: BorderRadius.circular(10.0),
                onTap: () {
                  // _showDialog(context);
                },
                child: approvalButton(context, "Start Preparing Food"),
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
    );
  }

  billSummary() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // decoration:
        //     BoxDecoration(border: Border.all(color: primaryColor, width: 2)),
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
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: fixPadding * 2),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Bill",
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

  approvalButton(context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding / 2,
        vertical: fixPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          setState(() {
            //   // Navigator.of(context).pop();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FoodPrepStarted()));
            //   // Navigator.of(context).pop();
            // _showDialog(context);
          });
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(
            fixPadding,
            fixPadding,
            fixPadding, 0,
            // fixPadding,
          ),
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

  Future<void> _showDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              color: bgColor,
              height: 310,
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.cancel_outlined)),
                  ),
                  Text("Order Status Update",
                      style: darkBlueColor22BoldTextStyle),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: fixPadding),
                    child: Text(
                      "Please specify the ETA to prepare all the foods in the order",
                      style: darkBlueColor16MediumTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  timeField(),
                  // SizedBox(
                  //   height: 25,
                  // ),
                  InkWell(
                      borderRadius: BorderRadius.circular(10.0),
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pop();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => FoodPrepStarted()));
                          // Navigator.of(context).pop();
                        });
                      },
                      child: approvalButton(context, "Start Preparing Food")),
                ],
              ),
            ),
          );
        });
  }

  timeField() {
    return Container(
      margin: EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding,
      ),
      padding: EdgeInsets.all(fixPadding * 1.5),
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
      child: Row(
        children: [
          Icon(
            Icons.person_outline,
            color: greyColor,
            size: 20,
          ),
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              style: greyColor16MediumTextStyle,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintStyle: greyColor16MediumTextStyle,
                hintText: 'Time(in minutes)',
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
