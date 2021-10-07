import 'package:cozina/constants/constants.dart';
import 'package:flutter/material.dart';

class AddKitchenScreen extends StatelessWidget {
  const AddKitchenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            // Container(child: Image.asset()),
            SizedBox(
              height: 20,
            ),
            Text(
                "You don't have a kitchen account \nCreate one to start selling food")
          ],
        ),
      ),
    );
  }

  
  

}
