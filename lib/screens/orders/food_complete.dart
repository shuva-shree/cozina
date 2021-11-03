import 'dart:async';

import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/orders/review_order.dart';
import 'package:cozina/widgets/bill_summary.dart';
import 'package:cozina/widgets/order_details.dart';
import 'package:flutter/material.dart';

class FoodPrepComplete extends StatefulWidget {
  const FoodPrepComplete({Key? key}) : super(key: key);

  @override
  _FoodPrepCompleteState createState() => _FoodPrepCompleteState();
}

class _FoodPrepCompleteState extends State<FoodPrepComplete> {
  late double height;
  late double width;
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ReviewOrder()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
      padding: const EdgeInsets.all(fixPadding),
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
              "Food is Ready for Pickup",
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

            Text(
              "Please visit the Pickup location to pickup your food",
              style: darkBlueColor18MediumTextStyle,
            ),
            heightSpace,
            // Align(
            //     alignment: Alignment.center,
            //     child: Container(
            //       height: 40,
            //       width: 140,
            //       color: primaryColor,
            //       child: Text("Order Completed"),
            //     )),
            orderStatusButton(),

            // heightSpace,
            // orderDetails(),
          ],
        ),
      ),
    );
  }

  

  orderStatusButton() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 1.5,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        // onTap: () {
        //   Navigator.push(context,
        //       MaterialPageRoute(builder: (context) => AccountVerificaton()));
        // },
        child: Container(
          height: 50,
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
            'Order Complete',
            style: whiteColor20BoldTextStyle,
          ),
        ),
      ),
    );
  }

  // billSummary() {
  //   return 
  //    Padding(
  //     padding: EdgeInsets.all(fixPadding),
  //     child: Container(
  //       decoration: BoxDecoration(
  //         color: whiteColor,
  //         borderRadius: BorderRadius.circular(10.0),
  //         boxShadow: [
  //           BoxShadow(
  //             color: greyColor.withOpacity(0.1),
  //             spreadRadius: 2.5,
  //             blurRadius: 2.5,
  //           ),
  //         ],
  //       ),
  //           child: Column(
  //             children: [
  //               SizedBox(
  //                 height: 20,
  //               ),
  //               Padding(
  //                 padding: EdgeInsets.only(left: fixPadding * 2),
  //                 child: Align(
  //                   alignment: Alignment.centerLeft,
  //                   child: Text(
  //                     "Bill Summary",
  //                     style: greyColor15MediumTextStyle,
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(
  //                 height: 20,
  //               ),
  //               billDetails(240, 2),
  //               heightSpace,
  //               billDetails(120, 1),
  //               SizedBox(
  //                 height: 10,
  //               ),
  //               totalAmount(),
  //               // heightSpace,
  //             ],
  //           ),
  //         ),
 
    
  //   );
  // }

  // billDetails(int amount, int quantity) {
  //   return Container(
  //     padding: EdgeInsets.symmetric(
  //         horizontal: fixPadding * 2, vertical: fixPadding),
  //     child: Column(
  //       children: [
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               "Paneer Dosa Masala",
  //               style: darkBlueColor18MediumTextStyle,
  //             ),
  //             Text(
  //               '\u{20B9}$amount',
  //               style: darkBlueColor16MediumTextStyle,
  //             ),
  //           ],
  //         ),
  //         Align(
  //             alignment: Alignment.centerLeft,
  //             child: Text(
  //               "Quantity: x 0${quantity}",
  //               style: darkBlueColor13RegularTextStyle,
  //             )),
  //       ],
  //     ),
  //   );
  // }

  // totalAmount() {
  //   return Container(
  //     padding: EdgeInsets.symmetric(
  //         horizontal: fixPadding * 2, vertical: fixPadding),
  //     child: Column(
  //       children: [
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               "Tax",
  //               style: darkBlueColor18MediumTextStyle,
  //             ),
  //             Text(
  //               '\u{20B9}${10}',
  //               style: darkBlueColor16MediumTextStyle,
  //             ),
  //           ],
  //         ),
  //         SizedBox(
  //           height: 30,
  //         ),
  //         heightSpace,
  //         Divider(
  //             // color: primaryColor,
  //             // thickness: 1.5,
  //             ),
  //         SizedBox(
  //           height: 10,
  //         ),
  //         heightSpace,
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               "Total Amout Payable",
  //               style: primaryColor18SemiBoldTextStyle,
  //             ),
  //             Text(
  //               '\u{20B9}${550}',
  //               style: primaryColor18SemiBoldTextStyle,
  //             ),
  //           ],
  //         ),
  //         heightSpace,
  //       ],
  //     ),
  //   );
  // }
}
