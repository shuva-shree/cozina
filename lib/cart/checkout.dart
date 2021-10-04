import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/payment/payment_waiting.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  _CheckoutScreenState createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int val = -1;
  bool _value = false;
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
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            "Checkout : John Foods",
            style: whiteColor20BoldTextStyle,
          ),
        ),
      ),
      body: Container(
        //  padding: EdgeInsets.all(fixPadding),
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
            Divider(
              color: primaryColor,
              thickness: 2,
            ),
            Container(
              padding: EdgeInsets.all(fixPadding),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Select Payment Method",
                      style: greyColor16SemiBoldTextStyle,
                    ),
                  ),
                  heightSpace,
                  Row(
                    children: [
                      new Radio(
                        value: 0,
                        groupValue: val,
                        onChanged: (int? val1) {
                          setState(() {
                            val = val1!;
                          });
                        },
                        activeColor: whiteColor,
                      ),
                      widthSpace,
                      new Text(
                        'Debit/Credit via Stripe',
                        style: darkBlueColor18MediumTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            heightSpace,
            heightSpace,
            Divider(
              color: primaryColor,
              thickness: 2,
            ),
            SizedBox(
              height: 80,
            ),
            paymentButton(),
          ],
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
          heightSpace,
          heightSpace,
          heightSpace,
          Divider(
            color: primaryColor,
            thickness: 1.5,
          ),
          heightSpace,
          heightSpace,
          heightSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Amout Payable",
                style: darkBlueColor18MediumTextStyle,
              ),
              Text(
                '\u{20B9}${550}',
                style: darkBlueColor18MediumTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }

  paymentButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: fixPadding),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: fixPadding),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: fixPadding * 2.0,
            vertical: fixPadding * 1.5,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(10.0),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentWaiting()),
              );
            },
            child: Container(
              height: 50,
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
                'Proceed To Pay',
                style: whiteColor18BoldTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}