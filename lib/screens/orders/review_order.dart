import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/orders/order_history.dart';
import 'package:cozina/screens/transactions/transaction_details.dart';
import 'package:cozina/screens/transactions/transaction_list.dart';
import 'package:cozina/widgets/bill_summary.dart';
import 'package:cozina/widgets/order_details.dart';
import 'package:cozina/widgets/star_display.dart';
import 'package:flutter/material.dart';

class ReviewOrder extends StatelessWidget {
  const ReviewOrder({Key? key}) : super(key: key);

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
          orderBox(context),
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

  orderBox(context) {
    return Padding(
      padding: EdgeInsets.all(fixPadding),
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
                // SizedBox(
                //   width: 120,
                // ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => OrderHistory()));
                  },
                  child: Text(
                    "Full Details",
                    style: TextStyle(
                        color: accentColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
            heightSpace,
            Text(
              "Order Completed",
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: fixPadding),
              child: Text(
                "Please review the Food and Food Maker",
                style: greyColor13MediumTextStyle,
              ),
            ),
            heightSpace,
            Align(
              alignment: Alignment.center,
              child: StarDisplayWidget(
                value: 3,
                filledStar: Icon(Icons.star, color: primaryColor, size: 35),
                unfilledStar:
                    Icon(Icons.star_border, color: greyColor, size: 35),
              ),
            ),
            heightSpace,
            heightSpace,
            reviewTextField(),
            heightSpace,
            submitButton(),
            // orderDetails(),
          ],
        ),
      ),
    );
  }

  reviewTextField() {
    return Container(
      // margin: EdgeInsets.fromLTRB(
      //   fixPadding,
      //   fixPadding,
      //   fixPadding,
      //   fixPadding,
      // ),
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
          // Icon(
          //   Icons.person_outline,
          //   color: greyColor,
          //   size: 20,
          // ),
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              style: greyColor16MediumTextStyle,
              // keyboardType: TextInputType.name,
              // maxLines: 10,

              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintStyle: greyColor16MediumTextStyle,
                hintText: 'Write you review here',
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  submitButton() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: fixPadding * 1.5,
          vertical: fixPadding,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(10.0),
          // onTap: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => AccountVerificaton()));
          // },
          child: Container(
            height: 40,
            width: 140,
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
              'Submit',
              style: whiteColor20BoldTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
