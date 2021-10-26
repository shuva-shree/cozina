import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class HelpAndSuppport extends StatelessWidget {
  const HelpAndSuppport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        // elevation: 0,
        // backgroundColor: bgColor,
        iconTheme: IconThemeData(color: whiteColor),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 22,
          ),
        ),
        title: Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            "Help & Support",
            style: whiteColor22BoldTextStyle,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Padding(
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
              child: Column(
                children: [
                  Container(
                      height: 70,
                      width: 70,
                      child: Image.asset(
                        "assets/icons/envelope.png",
                      )),
                  Text(
                    "contact@email.com",
                    style: darkBlueColor20SemiBoldTextStyle,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                      "Write us at our email and representative will reach you in 24 hours ",
                      style: darkBlueColor15MediumTextStyle),
                  // heightSpace,
                  // Text(
                  //   "Transaction Id : 12345678",
                  //   style: darkBlueColor18MediumTextStyle,
                  // ),
                  // SizedBox(
                  //   height: 25,
                  // ),
                  // Text(
                  //   "View Trasaction",
                  //   style: TextStyle(
                  //     color: accentColor,
                  //     fontSize: 17,
                  //   ),
                  // ),
                  SizedBox(
                    height: 25,
                  ),
                  helpButton(context, "Email"),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),

          Padding(
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
              // child:
              //  Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      height: 70,
                      width: 70,
                      child: Image.asset(
                        "assets/icons/phone.png",
                        fit: BoxFit.fill,
                      )),
                  heightSpace,
                  heightSpace,
                  Text(
                    "987 563 4567",
                    style: darkBlueColor20SemiBoldTextStyle,
                  ),
                  heightSpace,
                  heightSpace,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: fixPadding * 2),
                    child: Text(
                        "Call us & out Represenative will reach you in 24 hours ",
                        style: darkBlueColor15MediumTextStyle),
                  ),
                  heightSpace,
                  SizedBox(
                    height: 20,
                  ),
                  helpButton(context, "Call"),
                  SizedBox(
                    height: 20,
                  ),
                  // TextButton(
                  //   onPressed: () {
                  //     // Navigator.push(
                  //     //   context,
                  //     //   MaterialPageRoute(
                  //     //       builder: (context) => ConfirmedOrder()),
                  //     // );
                  //   },
                  //   child: Text(
                  //     "View this Order",
                  //     style: TextStyle(
                  //       color: accentColor,
                  //       fontSize: 17,
                  //     ),
                  //   ),
                  // ),
                  heightSpace,
                  heightSpace,
                ],
              ),
            ),
          ),
          // ),
        ],
      ),
    );
  }

  helpButton(context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: fixPadding * 2.0,
        vertical: fixPadding * 1.5,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => AccountVerificaton()));
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
            title,
            style: whiteColor20BoldTextStyle,
          ),
        ),
      ),
    );
  }
}
