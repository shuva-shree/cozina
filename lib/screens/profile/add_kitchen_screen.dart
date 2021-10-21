import 'package:cozina/constants/constants.dart';
import 'package:cozina/screens/profile/add_kitchen_details.dart';
import 'package:flutter/material.dart';

class AddKitchenScreen extends StatelessWidget {
  const AddKitchenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 70,
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
