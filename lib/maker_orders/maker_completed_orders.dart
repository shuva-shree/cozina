import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class MakeOrderComplete extends StatefulWidget {
  const MakeOrderComplete({Key? key}) : super(key: key);

  @override
  _MakeOrderCompleteState createState() => _MakeOrderCompleteState();
}

class _MakeOrderCompleteState extends State<MakeOrderComplete> {
  late double height;
  late double width;
  String _value = 'one';
  var banner_page = 1.0;
  var value = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              dropDownItems("All Status"),
              dropDownItems("From Date"),
              dropDownItems("To Date"),
            ],
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  orderBox(context, "Completed"),
                  orderBox(context, "Completed"),
                  orderBox(context, "Completed"),
                  // orderBox(context, "Out for Delivery"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  dropDownItems(String title) {
    return DropdownButton<String>(
      dropdownColor: bgColor,
      value: _value,
      items: <DropdownMenuItem<String>>[
        DropdownMenuItem(
          child: Text(
            title,
            style: blackColor15SemiBoldTextStyle,
          ),
          value: 'one',
        ),
        // DropdownMenuItem(
        //     child: Text(
        //       "FoodMaker's account",
        //       style: whiteColor15BoldTextStyle,
        //     ),
        //     value: 'two'),
      ],
      onChanged: (String? value) {
        setState(() => _value = value!);
      },
    );
  }

  orderBox(context, String title) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (ctx) => ConfirmedOrder()));
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
                          width: 145,
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
                      title,
                      style: darkBlueColor16MediumTextStyle,
                    ),
                    heightSpace,
                    Text(
                      "Order Status",
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
    );
  }
}