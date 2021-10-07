import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/transactions/transaction_details.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

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
          transactionBox(context),
          transactionBox(context),
          transactionBox(context),
          transactionBox(context),
          transactionBox(context),
        ],
      ),
    );
  }

  transactionBox(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TransactionDetails()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          // decoration:
          //     BoxDecoration(border: Border.all(color: primaryColor, width: 2)),
          width: double.infinity,
          // padding: EdgeInsets.all(fixPadding),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(fixPadding),
              child: Row(
                children: [
                  Container(
                      alignment: Alignment.topCenter,
                      child: Column(
                        children: [
                          Text(
                            "#1",
                            style: darkBlueColor18SemiBoldTextStyle,
                          ),
                          SizedBox(height: 100),
                        ],
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "TRN12345671111",
                              style: darkBlueColor20BoldTextStyle,
                            ),
                            SizedBox(
                              width: 90,
                            ),
                            Text(
                              "\u{20B9}${550}",
                              style: darkBlueColor20SemiBoldTextStyle,
                            ),
                          ],
                        ),
                        heightSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "12.04.2021 10 am",
                              style: darkBlueColor14MediumTextStyle,
                            ),
                            SizedBox(
                              width: 140,
                            ),
                            Text(
                              "Amount",
                              style: greyColor13RegularTextStyle,
                            ),
                          ],
                        ),
                        // heightSpace,
                        heightSpace,
                        Divider(
                          color: primaryColor,
                          thickness: 4,
                        ),
                        // Container(
                        //   height: 2,
                        //   decoration: BoxDecoration(
                        //     color: primaryColor,
                        //     border: Border(
                        //       bottom: BorderSide(color: primaryColor, width: 3.0),
                        //     ),
                        //   ),
                        // ),
                        heightSpace,
                        // heightSpace,
                        Text(
                          "Successful",
                          style: darkBlueColor18MediumTextStyle,
                        ),
                        heightSpace,
                        Text(
                          "Transaction Status",
                          style: greyColor14MediumTextStyle,
                        ),
                        heightSpace,
                        heightSpace,
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
