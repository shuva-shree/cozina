import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class SearchCityScreen extends StatelessWidget {
  const SearchCityScreen({Key? key}) : super(key: key);

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
              "Search City",
              style: whiteColor26BoldTextStyle,
            ),
          ),
        ),
        body: Column(
          children: [
            heightSpace,
            heightSpace,
            Padding(
                padding: EdgeInsets.only(left: fixPadding * 2, top: fixPadding),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "use current location",
                      style: TextStyle(
                          color: accentColor,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ))),
            SizedBox(
              height: 10,
            ),
            searchTextField(),
            ListTile(
              leading: Icon(
                Icons.location_on,
                color: blackColor,
                size: 30,
              ),
              title: Text(
                "Mumbai",
                style: darkBlueColor20SemiBoldTextStyle,
              ),
              trailing: Container(
                alignment: Alignment.center,
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 2, spreadRadius: 2)
                  ],
                  color: primaryColor,
                ),
                child: Text(
                  ">",
                  style: whiteColor26BoldTextStyle,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.location_on,
                color: blackColor,
                size: 30,
              ),
              title: Text(
                "Mumbai",
                style: darkBlueColor20SemiBoldTextStyle,
              ),
              trailing: Container(
                alignment: Alignment.center,
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 2, spreadRadius: 2)
                  ],
                  color: primaryColor,
                ),
                child: Text(
                  ">",
                  style: whiteColor26BoldTextStyle,
                ),
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.location_on,
                color: blackColor,
                size: 30,
              ),
              title: Text(
                "Mumbai",
                style: darkBlueColor20SemiBoldTextStyle,
              ),
              trailing: Container(
                alignment: Alignment.center,
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12, blurRadius: 2, spreadRadius: 2)
                  ],
                  color: primaryColor,
                ),
                child: Text(
                  ">",
                  style: whiteColor26BoldTextStyle,
                ),
              ),
            ),
            Divider(),
          ],
        ));
  }

  searchTextField() {
    return SizedBox(
      height: 75,
      child: Padding(
        padding: EdgeInsets.all(fixPadding * 1.5),
        child: InkWell(
          // onTap: () => Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => Search()),
          // ),
          child: Container(
            width: 380,
            height: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: greyColor.withOpacity(0.1),
                  spreadRadius: 2.5,
                  blurRadius: 2.5,
                ),
              ],
            ),
            child: TextField(
              enabled: false,
              cursorColor: primaryColor,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.blueGrey[800],
                  size: 20,
                ),
                hintText: 'Search city',
                hintStyle: greyColor14MediumTextStyle,
                border: UnderlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
