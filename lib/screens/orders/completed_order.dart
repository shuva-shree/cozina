import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class CompletedOrder extends StatelessWidget {
  const CompletedOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        orderBox(),
        orderBox(),
        orderBox(),
        orderBox(),
      ],
    );
  }

  orderBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: fixPadding, vertical: fixPadding / 2),
      child: Container(
        padding: const EdgeInsets.all(fixPadding),
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
                    SizedBox(height: 87),
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
                        "ORD123456789",
                        style: darkBlueColor20BoldTextStyle,
                      ),
                      SizedBox(
                        width: 120,
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
                  heightSpace,
                  // heightSpace,
                  Text(
                    "Completed",
                    style: darkBlueColor16MediumTextStyle,
                  ),
                  heightSpace,
                  Text(
                    "Order Status",
                    style: greyColor14MediumTextStyle,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
