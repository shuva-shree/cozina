import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/payment/payment_success.dart';
import 'package:flutter/material.dart';

class PaymentWaiting extends StatelessWidget {
  const PaymentWaiting({Key? key}) : super(key: key);

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
            "View Transaction",
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
                "assets/images/waiting.png",
              )),
          // heightSpace,
          Text(
            "Waiting for Confirmtion\nfrom Food Seller",
            style: darkBlueColor24SemiBoldTextStyle,
          ),
          SizedBox(
            height: 40,
          ),
          TextButton(onPressed: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>PaymentSuccess()),
              );},
            child: Text(
              "View this ORDER #1234",
              style: TextStyle(
                color: accentColor,
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
