import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class BasicDetails extends StatelessWidget {
  const BasicDetails({Key? key}) : super(key: key);

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
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/man1.jpg'),
                        fit: BoxFit.cover),
                  ),
                  // radius: 50,
                  // backgroundColor: whiteColor,
                  // child: Image.asset('assets/images/man1.jpg'),
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
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  "Change Password",
                  style: TextStyle(
                      color: accentColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
