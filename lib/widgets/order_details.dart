import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/transactions/transaction_list.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(fixPadding),
      child: Container(
        padding: EdgeInsets.all(fixPadding * 2),
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
            SizedBox(
              height: 10,
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
                  "550 Success",
                  style: darkBlueColor18SemiBoldTextStyle,
                ),
                GestureDetector(
                  onTap: () {
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
      ),
    );
  }
}
