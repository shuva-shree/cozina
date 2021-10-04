import 'package:cozina/cart/checkout.dart';
import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class CartDetails extends StatefulWidget {
  const CartDetails({Key? key}) : super(key: key);

  @override
  _CartDetailsState createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
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
            "Cuisine: South Indian",
            style: whiteColor26BoldTextStyle,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: fixPadding, left: fixPadding, right: fixPadding),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: 2)),
              padding: EdgeInsets.symmetric(
                  vertical: fixPadding, horizontal: fixPadding * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Foods from John Foods",
                    style: darkBlueColor15MediumTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  foodTile(),
                  heightSpace,
                  heightSpace,
                  heightSpace,
                  foodTile(),
                  heightSpace,
                  // Divider(
                  //   color: primaryColor,
                  //   thickness: 2,
                  // ),
                  heightSpace,
                ],
              ),
            ),
          ),
          deliveryOption(),
          checkoutButton(),
          heightSpace,
          itemsList(),
          deliveryOption(),
          checkoutButton(),
          // SizedBox(
          //   height: 500,
          //   child: deliveryAddress(),
          // ),
        ],
      ),
    );
  }

  foodTile() {
    return Container(
      padding: EdgeInsets.all(fixPadding),
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
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 80,
                child: Image.asset(
                  'assets/images/image16.jpg',
                  height: 70,
                  width: 80,
                  fit: BoxFit.cover,
                ),
              ),
              widthSpace,
              widthSpace,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Paneer Masala Dosa",
                          style: darkBlueColor18SemiBoldTextStyle,
                        ),
                      ],
                    ),
                    heightSpace,
                    heightSpace,
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\u{20B9}${120}',
                          style: darkBlueColor16MediumTextStyle,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: greyColor.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 3),
                                ],
                                color: primaryColor.withOpacity(0.8),
                              ),
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              child: Text(
                                "-",
                                style: whiteColor18BoldTextStyle,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "01",
                              style: darkBlueColor16SemiBoldTextStyle,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      color: greyColor.withOpacity(0.3),
                                      spreadRadius: 2,
                                      blurRadius: 3),
                                ],
                                color: primaryColor.withOpacity(0.8),
                              ),
                              alignment: Alignment.center,
                              height: 30,
                              width: 30,
                              child: Text(
                                "+",
                                style: whiteColor18BoldTextStyle,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              heightSpace,
            ],
          ),
        ],
      ),
    );
  }

  deliveryOption() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: fixPadding),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: fixPadding * 1.5),
        decoration: BoxDecoration(
            border: Border(
          left: BorderSide(color: primaryColor, width: 2),
          right: BorderSide(color: primaryColor, width: 2),
        )),
        child: Column(
          children: [
            heightSpace,
            heightSpace,
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Select Delivery Option",
                style: greyColor16SemiBoldTextStyle,
              ),
            ),
            heightSpace,
            // heightSpace,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                    new Text(
                      'Self Pick-Up',
                      style: darkBlueColor16MediumTextStyle,
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Text(
                      "Free",
                      style: darkBlueColor16MediumTextStyle,
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 5,
                // ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (int? val1) {
                        setState(() {
                          val = val1!;
                        });
                      },
                      activeColor: whiteColor,
                    ),
                    Text(
                      'Home Delivery',
                      style: darkBlueColor16MediumTextStyle,
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      "+ \u{20B9}${50}",
                      style: darkBlueColor16MediumTextStyle,
                    ),
                  ],
                ),
                // SizedBox(
                //   width: 17,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  checkoutButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: fixPadding),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: fixPadding),
        decoration: BoxDecoration(
          border: Border.all(color: primaryColor, width: 2),
          //   left: BorderSide(color: primaryColor, width: 2),
          //   right: BorderSide(color: primaryColor, width: 2),
          //   bottom: BorderSide(color: primaryColor, width: 2),
        ),
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
                MaterialPageRoute(builder: (context) => CheckoutScreen()),
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
                'Proceed To Checkout',
                style: whiteColor18BoldTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  itemsList() {
    return Padding(
      padding:
          EdgeInsets.only(top: fixPadding, left: fixPadding, right: fixPadding),
      child: Container(
        decoration:
            BoxDecoration(border: Border.all(color: primaryColor, width: 2)),
        padding: EdgeInsets.symmetric(
            vertical: fixPadding, horizontal: fixPadding * 1.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Foods from RockyFoods",
              style: darkBlueColor15MediumTextStyle,
            ),
            SizedBox(
              height: 20,
            ),
            foodTile(),
            heightSpace,
            heightSpace,
            heightSpace,
            foodTile(),
            heightSpace,
            heightSpace,
            heightSpace,
            foodTile(),
            heightSpace,
          ],
        ),
      ),
    );
  }

  userNameTextField(String title) {
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
          Icon(
            Icons.person_outline,
            color: greyColor,
            size: 20,
          ),
          widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              style: greyColor16MediumTextStyle,
              // keyboardType: TextInputType.name,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintStyle: greyColor16MediumTextStyle,
                hintText: title,
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  deliveryAddress() {
    return SingleChildScrollView(
      child: Container(
        height: 500,
        decoration:
            BoxDecoration(border: Border.all(color: primaryColor, width: 2)),
        padding: EdgeInsets.symmetric(
            vertical: fixPadding, horizontal: fixPadding * 1.5),
        // child: Flexible(
        //   flex: 1,
        child: ListView(
          shrinkWrap: true,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Select Delivery Option",
              style: greyColor16SemiBoldTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                new Text(
                  'foods',
                  style: whiteColor15BoldTextStyle,
                ),
                SizedBox(
                  width: 20,
                ),
                Radio(
                  value: 1,
                  groupValue: val,
                  onChanged: (int? val1) {
                    setState(() {
                      val = val1!;
                    });
                  },
                  activeColor: whiteColor,
                ),
                Text('food Maker', style: whiteColor15BoldTextStyle),
                userNameTextField("House No/Floor"),
                userNameTextField("Apartment/Street Name"),
                userNameTextField("Address Line1"),
                userNameTextField("Address Line2"),
              ],
            ),
          ],
        ),
        // ),
        // ),
      ),
    );
  }
}
