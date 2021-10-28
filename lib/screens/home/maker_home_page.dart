import 'package:cozina/constants/constants.dart';
import 'package:cozina/provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../foodMaker_drawer.dart';

class MakerHomePage extends StatefulWidget {
  const MakerHomePage({Key? key}) : super(key: key);

  @override
  _MakerHomePageState createState() => _MakerHomePageState();
}

class _MakerHomePageState extends State<MakerHomePage> {
  final valueProvider = ChangeNotifierProvider<ChangeValue>((ref) {
    return ChangeValue();
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, _) {
      var abc = watch(valueProvider).value;
      print('$abc');
      return Scaffold(
        backgroundColor: bgColor,
        drawer: FoodMakerMenuDrawer(),
        appBar: AppBar(
          toolbarHeight: 70,
          iconTheme: IconThemeData(color: whiteColor),
          title: Container(
            height: 47,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cozina",
                  style: whiteColor26BoldTextStyle,
                ),
                Expanded(
                  child: new DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      dropdownColor: primaryColor,
                      iconEnabledColor: whiteColor,
                      value: watch(valueProvider).value,
                      items: <DropdownMenuItem<String>>[
                        DropdownMenuItem(
                          child: Text(
                            "Buyer's Account",
                            style: whiteColor15BoldTextStyle,
                          ),
                          value: 'one',
                        ),
                        DropdownMenuItem(
                            child: Text(
                              "FoodMaker's account",
                              style: whiteColor15BoldTextStyle,
                            ),
                            value: 'two'),
                      ],
                      onChanged: (String? value) {
                        context.read(valueProvider).changeDropValue(value!);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          // bottom: PreferredSize(
          //   preferredSize: Size.fromHeight(70),
          //   child:
          // ),
          actions: [
            IconButton(
              onPressed: () {
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (ctx) => SearchScreen()));
              },
              icon: Icon(Icons.notifications),
              iconSize: 35,
              color: whiteColor,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.42,
                  child: GridView.count(
                    childAspectRatio: 2 / 1.5,
                    crossAxisCount: 2,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: fixPadding,
                            right: fixPadding / 2,
                            bottom: fixPadding),
                        child: Container(
                          padding: const EdgeInsets.only(left: fixPadding * 2),
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
                          // width: MediaQuery.of(context).size.width / 2,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "03",
                                style: TextStyle(
                                  color: darkBlueColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              heightSpace,
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "New Order Requests",
                                style: greyColor14MediumTextStyle,
                              ),
                              heightSpace,
                              Text(
                                "Waiting for approval",
                                style: greyColor14MediumTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: fixPadding / 2,
                            right: fixPadding,
                            bottom: fixPadding),
                        child: Container(
                          padding: const EdgeInsets.only(left: fixPadding * 2),
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
                          // width: MediaQuery.of(context).size.width / 2,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "02",
                                style: TextStyle(
                                  color: darkBlueColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              heightSpace,
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Currently",
                                style: greyColor14MediumTextStyle,
                              ),
                              heightSpace,
                              Text(
                                "Active Orders",
                                style: greyColor14MediumTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: fixPadding,
                            right: fixPadding / 2,
                            bottom: fixPadding),
                        child: Container(
                          padding: const EdgeInsets.only(left: fixPadding * 2),
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
                          // width: MediaQuery.of(context).size.width / 2,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "03",
                                style: TextStyle(
                                  color: darkBlueColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              heightSpace,
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Pending",
                                style: greyColor14MediumTextStyle,
                              ),
                              heightSpace,
                              Text(
                                "Home Delivery",
                                style: greyColor14MediumTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: fixPadding,
                            left: fixPadding / 2,
                            bottom: fixPadding),
                        child: Container(
                          padding: const EdgeInsets.only(left: fixPadding * 2),
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
                          // width: MediaQuery.of(context).size.width / 2,
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "03",
                                style: TextStyle(
                                  color: darkBlueColor,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              heightSpace,
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Pending",
                                style: greyColor14MediumTextStyle,
                              ),
                              heightSpace,
                              Text(
                                "Food Pick Up",
                                style: greyColor14MediumTextStyle,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: fixPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Currently Active Orders",
                      style: darkBlueColor18MediumTextStyle,
                    ),
                    Text(
                      "View All",
                      style: TextStyle(color: accentColor, fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              orderBox(context, "Approved"),
              orderBox(context, "Food Preparation Started"),
              orderBox(context, "Food Prepared, Waiting for pickup"),
            ],
          ),
        ),
      );
    });
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
