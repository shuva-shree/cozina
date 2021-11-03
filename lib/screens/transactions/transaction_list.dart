import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/transactions/transaction_details.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
  TransactionList({Key? key}) : super(key: key);
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
          heightSpace,
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
        padding: EdgeInsets.symmetric(
            horizontal: fixPadding, vertical: fixPadding / 2),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: fixPadding, vertical: fixPadding),
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
              Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      Text(
                        "#1",
                        style: darkBlueColor18SemiBoldTextStyle,
                      ),
                      SizedBox(height: 92),
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
                          width: width * 0.25,
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
                          width: width * 0.37,
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
                    // heightSpace,
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
