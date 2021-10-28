import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/cart/cart_details.dart';
import 'package:cozina/screens/profile/add_kitchen_screen.dart';
import 'package:cozina/screens/profile/basic_details.dart';
import 'package:cozina/screens/profile/kitchen_details.dart';
import 'package:cozina/screens/search_screen.dart/search_city_screen.dart';
import 'package:cozina/screens/search_screen.dart/search_screen.dart';
import 'package:flutter/material.dart';

import '../../buyer_drawer.dart';
// import 'kitchen_details.dart';

class MakerProfilePage extends StatefulWidget {
  const MakerProfilePage({Key? key}) : super(key: key);

  @override
  _MakerProfilePageState createState() => _MakerProfilePageState();
}

class _MakerProfilePageState extends State<MakerProfilePage> {
  late double height;
  late double width;
  var value = 1;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        title: Text(
          "My Profile",
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
      body: Column(
        children: [
          heightSpace,
          DefaultTabController(
            length: 2, // length of tabs
            initialIndex: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: TabBar(
                    indicatorColor: primaryColor,
                    labelColor: primaryColor,
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(text: 'Basic Details'),
                      Tab(text: 'Kitchen Details'),
                    ],
                  ),
                ),
                // Flexible(
                //   fit: FlexFit.tight,
                //   flex: 1,
                //   child:
                SingleChildScrollView(
                  child: Container(
                    // height: MediaQuery.of(context).size.height - 220,
                    height: MediaQuery.of(context).size.height -
                        135, //height of TabBarView
                    // decoration: BoxDecoration(
                    //     border: Border(
                    //         top: BorderSide(color: Colors.grey, width: 0.5))),
                    child: TabBarView(
                      children: <Widget>[
                        MakerBasicDetails(),
                        //  AddKitchenScreen()
                        KitchenDetails()
                      ],
                    ),
                  ),
                ),

                // ),
              ],
            ),
          ),
        ],
      ),
    );
    //       Expanded(child: value == 1 ? MakerBasicDetails() : KitchenDetails()),
    //     ],
    //   ),
    // );
  }
}

class MakerBasicDetails extends StatelessWidget {
  const MakerBasicDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        color: whiteColor,
        padding: EdgeInsets.symmetric(
          horizontal: fixPadding * 1.5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                      color: accentColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                )),
            heightSpace,
            Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/images/profile2.png'),
                )),
            SizedBox(
              height: 25,
            ),
            Text(
              "Name",
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
              "Email",
              style: greyColor15SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "email@example.com",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Mobile No.",
              style: greyColor15SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "9872345710",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Date of Birth",
              style: greyColor15SemiBoldTextStyle,
            ),
            heightSpace,
            Text(
              "15.08.1984",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Gender",
              style: greyColor16SemiBoldTextStyle,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Male",
              style: darkBlueColor18SemiBoldTextStyle,
            ),
            SizedBox(
              height: 30,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Change Password",
                  style: TextStyle(
                      color: accentColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "Delete Cozina Profile",
                style: TextStyle(
                    color: accentColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
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
