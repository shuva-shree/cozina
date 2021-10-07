import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class GiveKitchenDetails extends StatefulWidget {
  const GiveKitchenDetails({Key? key}) : super(key: key);

  @override
  _GiveKitchenDetailsState createState() => _GiveKitchenDetailsState();
}

class _GiveKitchenDetailsState extends State<GiveKitchenDetails> {
  late double height;
  late double width;
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        title: Text(
          "Add Kitchen",
          style: whiteColor26BoldTextStyle,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: primaryColor, width: 2)),
              height: 100,
              width: 100,
              child: Column(
                children: [
                  Container(
                      height: 75,
                      child: Image.asset('assets/icons/camera.png')),
                  Text(
                    "Upload Logo",
                    style: darkBlueColor13RegularTextStyle,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          nameField("Kitchen Name"),
          SizedBox(
            height: 20,
          ),
          addCuisine(),
          SizedBox(
            height: 20,
          ),
          kitchenAddress(),
        ],
      ),
    );
  }

  nameField(String title) {
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
      // child: Expanded(
      child: TextField(
        cursorColor: primaryColor,
        style: greyColor16MediumTextStyle,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.zero,
          hintStyle: greyColor16MediumTextStyle,
          hintText: title,
          border: UnderlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
      // ),
    );
  }

  addCuisine() {
    return Padding(
      padding: EdgeInsets.all(fixPadding),
      child: Container(
        padding: EdgeInsets.all(fixPadding),
        decoration:
            BoxDecoration(border: Border.all(color: primaryColor, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Add Cuisine",
                  style: greyColor15MediumTextStyle,
                ),
                Text(
                  "2 Cuisines Added",
                  style: darkBlueColor15MediumTextStyle,
                )
              ],
            ),
            heightSpace,
            heightSpace,
            nameField("Search Cuisine"),
            heightSpace,
            heightSpace,
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.black54.withOpacity(0.2),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.cancel,
                        color: darkBlueColor,
                      ),
                      widthSpace,
                      Text(
                        "South Indian",
                        style: darkBlueColor15MediumTextStyle,
                      ),
                    ],
                  ),
                ),
                widthSpace,
                widthSpace,
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.black54.withOpacity(0.2),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.cancel,
                        color: darkBlueColor,
                      ),
                      widthSpace,
                      Text(
                        "Thai",
                        style: darkBlueColor15MediumTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Widget kitchenAddress() {
    int val = -1;
    return Padding(
      padding: EdgeInsets.all(fixPadding),
      child: Container(
        height: height * 0.7,
        padding: EdgeInsets.all(fixPadding),
        decoration:
            BoxDecoration(border: Border.all(color: primaryColor, width: 2)),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kitchen Address",
                style: greyColor15MediumTextStyle,
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
                    'Add manually',
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
                  Text('Use Current', style: whiteColor15BoldTextStyle),
                  SizedBox(
                    width: 17,
                  ),
                ],
              ),
              Container(
                height: 400,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nameField("House No./Floor"),
                    nameField("Apartment/Street name"),
                    nameField("Address Line 1"),
                    stateDropDown(),
                    cityDropDown(),
                    nameField("Pincode"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  stateDropDown() {
    String _chosenValue = "Delhi";
    return Container(
      width: width * 0.8,
      // margin: EdgeInsets.fromLTRB(
      //   fixPadding * 2.0,
      //   // fixPadding,
      //   fixPadding * 2.0,
      //   fixPadding,
      // ),
      padding: EdgeInsets.all(fixPadding * 0.5),
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
      child: DropdownButton<String>(
        value: _chosenValue,
        //elevation: 5,
        style: TextStyle(color: Colors.black),

        items: <String>[
          'Maharashtra',
          'Tamil Nadu',
          'Gujarat',
          'West Bengal',
          'Madhya Pradesh',
          'Delhi',
          'Punjab',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        hint: Text(
          "States",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        onChanged: (String? value) {
          setState(() {
            _chosenValue = value!;
          });
        },
      ),
    );
  }

  cityDropDown() {
    String _chosenValue = "Mumbai";
    return Container(
      width: width * 0.8,
      // margin: EdgeInsets.fromLTRB(
      //   fixPadding * 2.0,
      //   // fixPadding,
      //   fixPadding * 2.0,
      //   fixPadding,
      // ),
      padding: EdgeInsets.all(fixPadding * 0.5),
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
      child: DropdownButton<String>(
        value: _chosenValue,
        //elevation: 5,
        style: TextStyle(color: Colors.black),

        items: <String>[
          'Kolkata',
          'Mumbai',
          'Jalandhar',
          'Haryana',
          'Bhopal',
          'Chennai'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        hint: Text(
          "States",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        onChanged: (String? value) {
          setState(() {
            _chosenValue = value!;
          });
        },
      ),
    );
  }
}
