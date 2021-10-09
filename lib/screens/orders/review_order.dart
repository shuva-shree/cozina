import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/orders/order_history.dart';
import 'package:cozina/screens/transactions/transaction_details.dart';
import 'package:cozina/screens/transactions/transaction_list.dart';
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
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 22,
          ),
        ),
      ),
      body: ListView(
        children: [
          orderBox(context),
          orderDetails(context),
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
          billSummary(),
        ],
      ),
    );
  }

  orderBox(context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: fixPadding, vertical: fixPadding * 2),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: fixPadding * 2, vertical: fixPadding),
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
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) => OrderHistory()));
                  },
                  child: Text(
                    "Full Details",
                    style: TextStyle(color: accentColor, fontSize: 17),
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
              padding: const EdgeInsets.symmetric(
                  horizontal: fixPadding * 1.5, vertical: fixPadding),
              child: Text(
                "Please review the Food and Food Maker",
                style: greyColor13MediumTextStyle,
              ),
            ),
            heightSpace,
            Align(
              alignment: Alignment.center,
              child: StarDisplayWidget(
                value: 0,
                filledStar: Icon(Icons.star, color: primaryColor, size: 35),
                unfilledStar:
                    Icon(Icons.star_border, color: greyColor, size: 35),
              ),
            ),

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
      margin: EdgeInsets.fromLTRB(
        fixPadding * 2.0,
        fixPadding,
        fixPadding * 2.0,
        fixPadding,
      ),
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

  orderDetails(context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: fixPadding * 2, vertical: fixPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 25,
          ),
          Text(
            "Order No.",
            style: greyColor15SemiBoldTextStyle,
          ),
          heightSpace,
          Text(
            "ORD12345678",
            style: darkBlueColor18SemiBoldTextStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Date & Time of Order",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\u{20B9} 550 Success",
                style: darkBlueColor18SemiBoldTextStyle,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TransactionList()));
                },
                child: Text(
                  "View Transaction",
                  style: TextStyle(color: accentColor, fontSize: 17),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Ordered From",
            style: greyColor15SemiBoldTextStyle,
          ),
          heightSpace,
          Text(
            "John Foods",
            style: darkBlueColor18SemiBoldTextStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Order Type",
            style: greyColor15SemiBoldTextStyle,
          ),
          heightSpace,
          Text(
            "Self Pick-Up",
            style: darkBlueColor18SemiBoldTextStyle,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Pick-up Address",
            style: greyColor16SemiBoldTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "111A, 3rd Floor, Galaxy Apartment, M.P Nagar, Zone II, Near Mata Mandir , Bhopal, \nPin:1110234",
            style: darkBlueColor18SemiBoldTextStyle,
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  billSummary() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // decoration:
        //     BoxDecoration(border: Border.all(color: primaryColor, width: 2)),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: fixPadding * 2),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bill Summary",
                      style: greyColor15MediumTextStyle,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                billDetails(240, 2),
                heightSpace,
                billDetails(120, 1),
                SizedBox(
                  height: 10,
                ),
                totalAmount(),
                // heightSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }

  billDetails(int amount, int quantity) {
    return Container(
      padding: EdgeInsets.all(fixPadding * 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Paneer Dosa Masala",
                style: darkBlueColor18MediumTextStyle,
              ),
              Text(
                '\u{20B9}$amount',
                style: darkBlueColor16MediumTextStyle,
              ),
            ],
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Quantity: x 0${quantity}",
                style: darkBlueColor13RegularTextStyle,
              )),
        ],
      ),
    );
  }

  totalAmount() {
    return Container(
      padding: EdgeInsets.all(fixPadding * 2),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Tax",
                style: darkBlueColor18MediumTextStyle,
              ),
              Text(
                '\u{20B9}${10}',
                style: darkBlueColor16MediumTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          heightSpace,
          Divider(
              // color: primaryColor,
              // thickness: 1.5,
              ),
          SizedBox(
            height: 30,
          ),
          heightSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Amout Payable",
                style: primaryColor18SemiBoldTextStyle,
              ),
              Text(
                '\u{20B9}${550}',
                style: primaryColor18SemiBoldTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
