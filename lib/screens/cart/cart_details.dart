import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/cart/checkout.dart';
import 'package:cozina/widgets/city_drop_down.dart';
import 'package:cozina/widgets/state_drop_down.dart';
import 'package:flutter/material.dart';

class CartDetails extends StatefulWidget {
  const CartDetails({Key? key}) : super(key: key);

  @override
  _CartDetailsState createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  int delValue = -1;
  int foodValue = -1;
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
            size: 22,
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            "Cuisine : South Indian",
            style: whiteColor22BoldTextStyle,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: fixPadding, left: fixPadding, right: fixPadding),
            child: Container(
              color: bgColor,
              // decoration: BoxDecoration(
              //     border: Border.all(color: primaryColor, width: 2)),
              // padding: EdgeInsets.symmetric(
              //     vertical: fixPadding, horizontal: fixPadding * 1.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Foods from John Foods",
                      style: darkBlueColor15MediumTextStyle,
                    ),
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
          deliveryAddress(),
          checkoutButton(),
          // SizedBox(
          //   height: 500,
          //   child:

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
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/image16.jpg"),
                    fit: BoxFit.cover,
                  ),
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
                                shape: BoxShape.circle,
                                // boxShadow: [
                                //   BoxShadow(
                                //       color: greyColor.withOpacity(0.3),
                                //       spreadRadius: 2,
                                //       blurRadius: 3),
                                // ],
                                color: blackColor,
                              ),
                              alignment: Alignment.center,
                              height: 28,
                              width: 28,
                              child: Text(
                                "-",
                                style: whiteColor20BoldTextStyle,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "01",
                              style: darkBlueColor18SemiBoldTextStyle,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // boxShadow: [
                                //   BoxShadow(
                                //       color: greyColor.withOpacity(0.3),
                                //       spreadRadius: 2,
                                //       blurRadius: 3),
                                // ],
                                color: blackColor,
                              ),
                              alignment: Alignment.center,
                              height: 28,
                              width: 28,
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
        // padding: EdgeInsets.symmetric(horizontal: fixPadding * 1.5),
        // decoration: BoxDecoration(
        //     border: Border(
        //   left: BorderSide(color: primaryColor, width: 2),
        //   right: BorderSide(color: primaryColor, width: 2),
        // )),
        child: Column(
          children: [
            heightSpace,
            heightSpace,
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Select Delivery Option",
                  style: greyColor16SemiBoldTextStyle,
                ),
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
                      groupValue: delValue,
                      onChanged: (int? val1) {
                        setState(() {
                          delValue = val1!;
                        });
                      },
                      activeColor: primaryColor,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          delValue = 0;
                        });
                      },
                      child: new Text(
                        'Self Pick-Up',
                        style: darkBlueColor16MediumTextStyle,
                      ),
                    ),
                    SizedBox(
                      width: 175,
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
                      groupValue: delValue,
                      onChanged: (int? val1) {
                        setState(() {
                          delValue = val1!;
                        });
                      },
                      activeColor: primaryColor,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          delValue = 1;
                        });
                      },
                      child: Text(
                        'Home Delivery',
                        style: darkBlueColor16MediumTextStyle,
                      ),
                    ),
                    SizedBox(
                      width: 150,
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
      //   ),
      // ),
    );
  }

  itemsList() {
    return Padding(
      padding: EdgeInsets.only(
        top: fixPadding,
      ),
      child: Container(
        // decoration:
        //     BoxDecoration(border: Border.all(color: primaryColor, width: 2)),
        padding:
            EdgeInsets.symmetric(vertical: fixPadding, horizontal: fixPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                "Foods from RockyFoods",
                style: darkBlueColor15MediumTextStyle,
              ),
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
      // height: 500,
      margin: EdgeInsets.fromLTRB(
        fixPadding,
        fixPadding,
        fixPadding,
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
          // widthSpace,
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

  pincodeField() {
    return Container(
      margin: EdgeInsets.fromLTRB(
        fixPadding,
        fixPadding,
        fixPadding,
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
          //   Icons.phone_android_outlined,
          //   color: greyColor,
          //   size: 20,
          // ),
          // widthSpace,
          Expanded(
            child: TextField(
              cursorColor: primaryColor,
              style: greyColor16MediumTextStyle,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.zero,
                hintStyle: greyColor16MediumTextStyle,
                hintText: 'Pin Code',
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }

  deliveryAddress() {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: fixPadding * 2, horizontal: fixPadding * 1.5),
      child: Container(
        height: 620,
        // decoration:
        padding: EdgeInsets.symmetric(
            vertical: fixPadding * 2, horizontal: fixPadding),
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
        // child: Expanded(
        child: Column(
          // shrinkWrap: true,
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                " Delivery Address",
                style: greyColor16SemiBoldTextStyle,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                  width: 150,
                  child: Row(
                    children: [
                      new Radio(
                        value: 0,
                        groupValue: foodValue,
                        onChanged: (int? val1) {
                          setState(() {
                            foodValue = val1!;
                          });
                        },
                        activeColor: primaryColor,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            foodValue = 0;
                          });
                        },
                        child: new Text(
                          'Add Manually',
                          style: darkBlueColor15MediumTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                SizedBox(
                  height: 80,
                  width: 130,
                  child: Row(
                    children: [
                      Radio(
                        value: 1,
                        groupValue: foodValue,
                        onChanged: (int? val1) {
                          setState(() {
                            foodValue = val1!;
                          });
                        },
                        activeColor: primaryColor,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            foodValue = 1;
                          });
                        },
                        child: Text(
                          'Use Current',
                          style: darkBlueColor15MediumTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            userNameTextField("House No/Floor"),
            userNameTextField("Apartment/Street Name"),
            userNameTextField("Address Line1"),
            userNameTextField("Address Line2"),
            StateDropDown(),
            CityDropDown(),
            pincodeField(),
          ],
        ),
      ),
      // ),
      // ),
      // ),
    );
  }
}
