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
        backgroundColor: bgColor,
        elevation: 0,
        iconTheme: IconThemeData(color: darkBlueColor),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            "Payment Sucess",
            style: darkBlueColor24SemiBoldTextStyle,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: fixPadding, vertical: fixPadding),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: fixPadding * 3, vertical: fixPadding * 2),
                child: Column(
                  children: [
                    Container(
                        height: 130,
                        width: 130,
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
                      "View Transaction",
                      style: TextStyle(
                        color: accentColor,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // heightSpace,
          // heightSpace,
          // Divider(
          //   color: primaryColor,
          //   thickness: 2,
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: fixPadding,
            ),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: fixPadding * 5.2, vertical: fixPadding),
                child: Column(
                  children: [
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
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentSuccess()),
                        );
                      },
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
