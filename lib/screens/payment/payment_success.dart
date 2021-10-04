import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/food_screen/food_maker_details.dart';
import 'package:cozina/screens/food_screen/food_maker_screen.dart';
import 'package:cozina/screens/orders/confirmed_order.dart';
import 'package:flutter/material.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            "Search City",
            style: whiteColor26BoldTextStyle,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Container(
              height: 130,
              width: 130,
              child: Image.asset(
                "assets/images/sucess1.png",
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
          heightSpace,
          heightSpace,
          Divider(
            color: primaryColor,
            thickness: 2,
          ),
          Container(
              height: 130,
              width: 130,
              child: Image.asset(
                "assets/images/sucess1.png",
              )),
          Text(
            "Order Confirmed",
            style: darkBlueColor24SemiBoldTextStyle,
          ),
          heightSpace,
          heightSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: fixPadding * 2),
            child: Text(
                "Your order is confirmed by the Food Seller. ETA or Pick-up: 10 am Today ",
                style: darkBlueColor18MediumTextStyle),
          ),
          heightSpace,
          SizedBox(
            height: 25,
          ),
          TextButton(onPressed: (){
             Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>ConfirmedOrder()),
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
          heightSpace,
          heightSpace,
        ],
      ),
    );
  }
}
