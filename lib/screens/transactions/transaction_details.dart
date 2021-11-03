import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        title: Text(
          "My Transaction",
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
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: fixPadding, vertical: fixPadding),
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: fixPadding * 2, vertical: fixPadding * 1.5),
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
                  Text(
                    "Transction Status",
                    style: greyColor15MediumTextStyle,
                  ),
                  heightSpace,
                  heightSpace,
                  Text(
                    "Payment Successful",
                    style: darkBlueColor18MediumTextStyle,
                  ),
                  heightSpace,
                ],
              ),
            ),
          ),
          heightSpace,
          // ),

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: fixPadding, vertical: fixPadding),
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: fixPadding * 2, vertical: fixPadding * 1.5),
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
                  Text(
                    "Transcation Id",
                    style: greyColor15SemiBoldTextStyle,
                  ),
                  heightSpace,
                  Text(
                    "123456781902",
                    style: darkBlueColor18SemiBoldTextStyle,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Date & Time ",
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
                    "Amount",
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
                    "Transaction made for Order",
                    style: greyColor16SemiBoldTextStyle,
                  ),
                  heightSpace,
                  heightSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ORD123456789",
                        style: darkBlueColor18SemiBoldTextStyle,
                      ),
                      Text(
                        "View this Order",
                        style: TextStyle(color: accentColor, fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
