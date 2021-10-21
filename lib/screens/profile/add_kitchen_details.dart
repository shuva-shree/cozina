import 'package:carousel_slider/carousel_slider.dart';
import 'package:cozina/constants/constants.dart';
import 'package:cozina/widgets/city_drop_down.dart';
import 'package:cozina/widgets/state_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class AddKitchenDetails extends StatefulWidget {
  const AddKitchenDetails({Key? key}) : super(key: key);

  @override
  _AddKitchenDetailsState createState() => _AddKitchenDetailsState();
}

class _AddKitchenDetailsState extends State<AddKitchenDetails> {
  final List<String> imageList = [
    "assets/icons/add-image.png",
    "assets/icons/add-image.png",
    "assets/icons/add-image.png",
    "assets/icons/add-image.png",
    "assets/icons/add-image.png",
  ];

  int delValue = -1;
  int foodValue = -1;
  int yesValue = -1;
  int currentPos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          iconTheme: IconThemeData(color: whiteColor),
          title: Text(
            "Add Kitchen",
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      // border: Border.all(color: primaryColor, width: 2),
                      image: DecorationImage(
                          image: AssetImage("assets/images/image16.jpg"),
                          fit: BoxFit.cover)),
                  height: 100,
                  width: 100,
                  // child: Text(
                  //   "KITCHEN LOGO",
                  //   style: whiteColor15BoldTextStyle,
                  // ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              userNameTextField("Kitchen Nane"),
              // SizedBox(
              //   height: 20,
              // ),
              addCuisine(),
              // SizedBox(
              //   height: 20,
              // ),
              deliveryAddress(),
              heightSpace,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: fixPadding * 1.5),
                child: Text(
                  "Home Delivery Available?",
                  style: darkBlueColor18SemiBoldTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: fixPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 80,
                      width: 150,
                      child: Row(
                        children: [
                          new Radio(
                            value: 0,
                            groupValue: yesValue,
                            onChanged: (int? val1) {
                              setState(() {
                                yesValue = val1!;
                              });
                            },
                            activeColor: primaryColor,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                yesValue = 0;
                              });
                            },
                            child: new Text(
                              'Yes',
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
                            groupValue: yesValue,
                            onChanged: (int? val1) {
                              setState(() {
                                yesValue = val1!;
                              });
                            },
                            activeColor: primaryColor,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                yesValue = 1;
                              });
                            },
                            child: Text(
                              'No',
                              style: darkBlueColor15MediumTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              addCity(),
              userNameTextField("Home Delivery Charge(in \u{20B9})"),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: fixPadding * 1.5),
                child: Text(
                  "Add Kitchen Photos",
                  style: darkBlueColor18SemiBoldTextStyle,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                child:

                    // Expanded(
                    //   child:
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      CarouselSlider.builder(
                        itemCount: imageList.length,
                        options: CarouselOptions(
                            aspectRatio: 16 / 7,
                            // autoPlay: true,
                            viewportFraction: 0.6,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentPos = index;
                              });
                            }),
                        itemBuilder: (context, index, _) {
                          return Container(
                            width: double.infinity,
                            height: 220,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(imageList[index]),
                                // fit: BoxFit.fill,
                              ),
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            // child: FittedBox(
                            //   fit: BoxFit.fill,
                            //   child: Image.asset(listPaths[index]),
                            // )
                          );
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imageList.map((url) {
                          int index = imageList.indexOf(url);
                          return Container(
                            width: 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 2.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentPos == index
                                  ? Color.fromRGBO(0, 0, 0, 0.9)
                                  : Color.fromRGBO(0, 0, 0, 0.4),
                            ),
                          );
                        }).toList(),
                      ),
                    ]
                        // ),
                        ),
              ),
              // GFItemsCarousel(
              //   rowCount: 2,

              //   children: imageList.map(
              //     (url) {
              //       return Container(
              //         margin: EdgeInsets.all(5.0),
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.all(Radius.circular(5.0)),
              //           child: Image.network(url,
              //               fit: BoxFit.cover, width: 1000.0),
              //         ),
              //       );
              //     },
              //   ).toList(),
              // ),
              // GFCarousel(
              //   viewportFraction: 0.4,
              //   pagination: true,
              //   enableInfiniteScroll: true,
              //   items: imageList.map(
              //     (url) {
              //       return Container(
              //         margin: EdgeInsets.all(8.0),
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.all(Radius.circular(5.0)),
              //           child: Image.network(url,
              //               fit: BoxFit.cover, width: 1000.0),
              //         ),
              //       );
              //     },
              //   ).toList(),
              //   onPageChanged: (index) {
              //     setState(() {
              //       index;
              //     });
              //   },
              // ),
              SizedBox(
                height: 30,
              ),
              addKitchenButton(context)
            ],
          ),
        ));
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

  addCuisine() {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: fixPadding, vertical: fixPadding),
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: fixPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add Cuisine",
                    style: greyColor15SemiBoldTextStyle,
                  ),
                  Text(
                    "2 Cuisines Added",
                    style: darkBlueColor15SemiBoldTextStyle,
                  ),
                ],
              ),
            ),
            heightSpace,
            heightSpace,
            userNameTextField("Search Cuisine"),
            heightSpace,
            heightSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: fixPadding),
              child: Row(
                children: [
                  cuisineType("South Indian"),
                  widthSpace,
                  cuisineType("Thai"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  cuisineType(String title) {
    return Container(
      height: 20,
      // width: ,
      // padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: blackColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.cancel,
              color: whiteColor,
              size: 12,
            ),
            widthSpace,
            Text(
              title,
              style: whiteColor13BoldTextStyle,
            ),
          ],
        ),
      ),
    );
  }

  deliveryAddress() {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: fixPadding * 2, horizontal: fixPadding),
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

  addCity() {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: fixPadding, vertical: fixPadding),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: fixPadding),
              child: Text(
                "Cities coveres in Home Delivery",
                style: greyColor15SemiBoldTextStyle,
              ),
            ),
            //     ),
            //     Text(
            //       "2 Cuisines Added",
            //       style: darkBlueColor15SemiBoldTextStyle,
            //     ),
            //   ],
            // ),
            heightSpace,
            heightSpace,
            userNameTextField("Search City & Add"),
            heightSpace,
            heightSpace,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: fixPadding),
              child: Row(
                children: [
                  cuisineType("Bhopal"),
                  widthSpace,
                  cuisineType("Bairagarh"),
                  widthSpace,
                  cuisineType("Mandideep"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  addKitchenButton(context) {
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
            MaterialPageRoute(builder: (context) => AddKitchenDetails()),
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
            'Add Kitchen',
            style: whiteColor18BoldTextStyle,
          ),
        ),
      ),
      //   ),
      // ),
    );
  }
}
