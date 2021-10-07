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
          style: whiteColor26BoldTextStyle,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(fixPadding * 2),

            // decoration: BoxDecoration(
            //   border: Border.all(color: primaryColor, width: 2),
            // ),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(fixPadding * 2),
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
          ),
          // ),

          Padding(
            padding: const EdgeInsets.only(
                left: fixPadding * 2, right: fixPadding * 2),
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
        ],
      ),
    );
  }
}
