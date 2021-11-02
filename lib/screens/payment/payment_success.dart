import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/food_screen/food_maker_details.dart';
import 'package:cozina/screens/food_screen/food_maker_screen.dart';
import 'package:cozina/screens/orders/confirmed_order.dart';
import 'package:flutter/material.dart';

class PaymentSuccess extends StatelessWidget {
  PaymentSuccess({Key? key}) : super(key: key);
  late double height;
  late double width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        // elevation: 0,
        // backgroundColor: bgColor,
        iconTheme: IconThemeData(color: whiteColor),
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
        title: Text(
          "Payment Success",
          style: whiteColor22BoldTextStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              height: height * 0.41,
              width: width,
              padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding, vertical: fixPadding * 2),
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
                  Container(
                      height: height * 0.16,
                      width: width * 0.4,
                      child: Image.asset(
                        "assets/images/success.png",
                      )),
                  Text(
                    "Payment Successful",
                    style: darkBlueColor24SemiBoldTextStyle,
                  ),
                  heightSpace,
                  heightSpace,
                  Text("Your payment of \u{20B9}${550} was sucessful ",
                      style: darkBlueColor18MediumTextStyle),
                  heightSpace,
                  Text(
                    "Transaction Id : 12345678",
                    style: darkBlueColor18MediumTextStyle,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "View Trasaction",
                    style: TextStyle(
                      color: accentColor,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              height: height * 0.41,
              width: width,
              padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding * 1.5, vertical: fixPadding * 1.5),
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
                  Container(
                      height: height * 0.16,
                      width: width * 0.4,
                      child: Image.asset(
                        "assets/images/success.png",
                      )),
                  Text(
                    "Order Confirmed",
                    style: darkBlueColor24SemiBoldTextStyle,
                  ),
                  heightSpace,
                  heightSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: fixPadding),
                    child: Text(
                        "Your order is confirmed by the Food Seller. ETA or Pick-up: 10 am Today ",
                        style: darkBlueColor18MediumTextStyle),
                  ),
                  heightSpace,
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmedOrder()),
                      );
                    },
                    child: Text(
                      "View this Order",
                      style: TextStyle(
                        color: accentColor,
                        fontSize: 17,
                      ),
                    ),
                  ),
                  // heightSpace,
                  // heightSpace,
                ],
              ),
            ),
          ),
          // ),
        ],
      ),
    );
  }
}
