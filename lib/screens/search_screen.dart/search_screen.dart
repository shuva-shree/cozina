import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/list_screens/food_list.dart';
import 'package:cozina/screens/list_screens/food_maker_list.dart';
import 'package:cozina/screens/list_screens/popular_cuisines.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int val = -1;
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
            "Search",
            style: whiteColor22BoldTextStyle,
          ),
        ),
        bottom: extendedAppBar(),
      ),
      body: Container(
        child: Column(
          children: [
            heightSpace,
            heightSpace,
            heightSpace,
            heightSpace,
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  val == 1
                      ? 'Search  Result for "Sharma Bojans"'
                      : val == 2
                          ? 'Search Result for "Indian" '
                          : 'Search Result for "Dosa"',
                  style: greyColor13MediumTextStyle,
                ),
              ),
            ),
            heightSpace,
            heightSpace,
            heightSpace,
            heightSpace,
            Expanded(
                child: val == 1
                    ? FoodMakersList()
                    : val == 2
                        ? PopularCuisineList()
                        : FoodsList()),
          ],
        ),
      ),
    );
  }

  extendedAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(120),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      // fillColor:whiteColor ,
                    ),
                    SizedBox(
                      width: 0,
                    ),
                    new Text(
                      'foods',
                      style: whiteColor15BoldTextStyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    SizedBox(
                      width: 8,
                    ),
                    Text('food Maker', style: whiteColor15BoldTextStyle),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Radio(
                      value: 2,
                      groupValue: val,
                      onChanged: (int? val1) {
                        setState(() {
                          val = val1!;
                        });
                      },
                      activeColor: whiteColor,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    new Text(
                      'cuisine',
                      style: whiteColor15BoldTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
          searchTextField(),
        ],
      ),
    );
  }

  searchTextField() {
    return SizedBox(
      height: 75,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(fixPadding * 1.5),
            child: InkWell(
              // onTap: () => Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Search()),
              // ),
              child: Container(
                width: 310,
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
                    hintText: val == 1
                        ? 'Search  food makers'
                        : val == 2
                            ? 'Search  cuisines'
                            : 'Search foods',
                    hintStyle: greyColor14MediumTextStyle,
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.filter_alt,
                color: whiteColor,
              )),
        ],
      ),
    );
  }
}
