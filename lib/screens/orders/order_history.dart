import 'package:cozina/constants/constants.dart';
import 'package:cozina/widgets/stepper_page.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: whiteColor),
        title: Text(
          "#Order1234",
          style: whiteColor26BoldTextStyle,
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: StepperPage(),
    );
  }
}
