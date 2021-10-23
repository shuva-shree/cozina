import 'package:cozina/buyer_drawer.dart';
import 'package:cozina/constants/constants.dart';
import 'package:cozina/foodMaker_drawer.dart';
import 'package:cozina/screens/profile/add_kitchen_details.dart';
import 'package:flutter/material.dart';

class AddMakerKitchen extends StatefulWidget {
  const AddMakerKitchen({Key? key}) : super(key: key);

  @override
  _AddMakerKitchenState createState() => _AddMakerKitchenState();
}

class _AddMakerKitchenState extends State<AddMakerKitchen> {
  String _value = 'one';

  @override
  Widget build(BuildContext context) {
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
                    value: _value,
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
                      setState(() => _value = value!);
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
          // IconButton(
          //   onPressed: () {
          //     Navigator.of(context)
          //         .push(MaterialPageRoute(builder: (ctx) => CartDetails()));
          //   },
          //   icon: Icon(Icons.shopping_cart),
          //   iconSize: 33,
          //   color: whiteColor,
          // )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            Container(
              height: 120,
              width: 150,
              child: Opacity(
                opacity: 0.4,
                child:
                    Image.asset("assets/icons/kitchen.png", fit: BoxFit.fill),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "You don't have a kitchen account \nCreate one to start selling food",
              style: darkBlueColor20SemiBoldTextStyle,
            ),
            SizedBox(
              height: 50,
            ),
            addKitchenButton(context)
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
          padding: EdgeInsets.only(left: 100),
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
          child: Row(
            children: [
              Icon(
                Icons.add,
                color: whiteColor,
              ),
              widthSpace,
              Text(
                'Add Kitchen',
                style: whiteColor18BoldTextStyle,
              ),
            ],
          ),
        ),
      ),
      //   ),
      // ),
    );
  }
}
