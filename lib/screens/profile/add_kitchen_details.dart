import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class AddKitchenDetails extends StatelessWidget {
  const AddKitchenDetails({ Key? key }) : super(key: key);

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
      body: Column(
        children: [
          SizedBox(height: 40,),
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
                ),),

        ],
      )
    );
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
}