import 'package:flutter/material.dart';

class AccountVerificaton extends StatelessWidget {
  const AccountVerificaton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cozina"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_basket))
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: [
          Icon(
            Icons.email,
            size: 60,
          ),
          Text(
            "Please verify your email to access Cozina. Click on the verification linksent on your Email: email@example.com",
            maxLines: 3,
          ),
          SizedBox(height: 40),
          Text("Haven't received verification email?"),
          ElevatedButton(
            onPressed: () {},
            child: Text("Receive verification Email"),
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).primaryColor),
          )
        ],
      ),
    );
  }
}
