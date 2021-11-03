import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/orders/confirmed_order.dart';
import 'package:flutter/material.dart';

class EarningDetails extends StatefulWidget {
  const EarningDetails({Key? key}) : super(key: key);

  @override
  _EarningDetailsState createState() => _EarningDetailsState();
}

class _EarningDetailsState extends State<EarningDetails> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          heightSpace,
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: fixPadding, vertical: fixPadding / 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "\u{20B9}5,250.00",
                      style: darkBlueColor18SemiBoldTextStyle,
                    ),
                    Text(
                      "Current Balance",
                      style: greyColor13RegularTextStyle,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    _showDialog(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    // width: 150,
                    padding: EdgeInsets.symmetric(
                        horizontal: fixPadding, vertical: fixPadding / 2),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Request Bank Transfer",
                      style: whiteColor18BoldTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          heightSpace,
          orderBox(context),
          orderBox(context),
          // orderBox(context),
        ],
      ),
    );
  }

  orderBox(context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => ConfirmedOrder()));
      },
      child: Padding(
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
                      SizedBox(height: 100),
                    ],
                  )),
              SizedBox(
                width: 20,
              ),
              Container(
                // padding: EdgeInsets.only(right: fixPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Credit",
                          style: darkBlueColor20BoldTextStyle,
                        ),
                        SizedBox(
                          width: width * 0.53,
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
                          "12.04.2021 | 10 am",
                          style: darkBlueColor14MediumTextStyle,
                        ),
                        SizedBox(
                          width: width * 0.35,
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
                      "Order No.",
                      style: greyColor14MediumTextStyle,
                    ),
                    heightSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "ORD123456789",
                          style: darkBlueColor16MediumTextStyle,
                        ),
                        SizedBox(
                          width: width * 0.3,
                        ),
                        Text(
                          "View Order",
                          style: TextStyle(color: accentColor, fontSize: 16),
                        )
                      ],
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
    );
  }

  Future<void> _showDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: bgColor,
              ),
              height: 320,
              padding: EdgeInsets.symmetric(horizontal: 7),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.cancel_outlined)),
                  ),
                  Text("Bank Transfer Request",
                      style: darkBlueColor22BoldTextStyle),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: fixPadding),
                    child: Text(
                      "Current Balance : \u{20B9}5,250.00",
                      style: darkBlueColor16MediumTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  timeField(),
                  // SizedBox(
                  //   height: 25,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: fixPadding),
                    child: Text(
                      "Min. Transfer Amount: \u{20B9}100",
                      style: greyColor13MediumTextStyle,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                      borderRadius: BorderRadius.circular(10.0),
                      onTap: () {
                        setState(() {
                          Navigator.of(context).pop();
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => FoodPrepStarted()));
                          // Navigator.of(context).pop();
                        });
                      },
                      child:
                          approvalButton(context, "Submit Transfer Request")),
                ],
              ),
            ),
          );
        });
  }

  approvalButton(context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding / 2,
        vertical: fixPadding,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => AcceptedOrder()));
        },
        child: Container(
          height: 45,
          // width: MediaQuery.of(context).size.width / 2.7,
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
            title,
            style: whiteColor18BoldTextStyle,
          ),
        ),
      ),
    );
  }

  timeField() {
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
          //   Icons.timer_sharp,
          //   color: greyColor,
          //   size: 20,
          // ),
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              style: greyColor16MediumTextStyle,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintStyle: greyColor16MediumTextStyle,
                hintText: 'Amount To Transfer (in \u{20B9})',
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
