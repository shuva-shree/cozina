import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class BankDetails extends StatefulWidget {
  const BankDetails({Key? key}) : super(key: key);

  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: whiteColor,
      padding: EdgeInsets.symmetric(
          horizontal: fixPadding * 2, vertical: fixPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            heightSpace,
            heightSpace,
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Edit Kitchen Details",
                  style: TextStyle(
                      color: accentColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: 40,
            ),
            Text(
              "Full Name in Bank Account",
              style: greyColor15SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "Michale George Jordan",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Account No.",
              style: greyColor15SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "11112223334444",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "IIFSC Code",
              style: greyColor15SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "1234aaaa789",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Bank Name",
              style: greyColor16SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "Swiss Bank",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Branch Name",
              style: greyColor16SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "ABC Branch Name",
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
