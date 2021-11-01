import 'package:cozina/constants/constants.dart';
import 'package:cozina/provider/provider.dart';

import 'package:cozina/widgets/buyer_bottom_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// class AccountVerificaton extends ConsumerWidget {
//   const AccountVerificaton({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, watch) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 70,
//         iconTheme: IconThemeData(color: whiteColor),
//         title: Text(
//           "Cozina",
//           style: whiteColor26BoldTextStyle,
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.search),
//             iconSize: 35,
//             color: whiteColor,
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: Icon(Icons.shopping_cart),
//             iconSize: 33,
//             color: whiteColor,
//           )
//         ],
//       ),
//       drawer: Drawer(),
//       body: Column(
//         // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: 120,
//           ),
//           Center(
//             child: Icon(
//               Icons.email,
//               size: 130,
//               color: Colors.grey.withOpacity(0.4),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             child: Text(
//               "Please verify your email to access Cozina.\n Click on the verification linksent on your \nEmail: email@example.com",
//               maxLines: 5,
//               style: blackColor16RegularTextStyle,
//             ),
//           ),
//           SizedBox(height: 200),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Text(
//               "Haven't received verification email?",
//               style: blackColor16RegularTextStyle,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           // ElevatedButton(
//           //   onPressed: () {},
//           //   child: Text("Receive verification Email"),
//           //   style: ElevatedButton.styleFrom(
//           //       primary: Theme.of(context).primaryColor),
//           // )
//           resendButton(context),
//         ],
//       ),
//     );
//   }
// }

class AccountVerification extends StatefulWidget {
  const AccountVerification({Key? key}) : super(key: key);

  @override
  _AccountVerificationState createState() => _AccountVerificationState();
}

class _AccountVerificationState extends State<AccountVerification> {
  late double width;
  late double height;

  resendButton(context) {
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
            MaterialPageRoute(
                builder: (context) =>
                    // context.read(postProvider).categoryOnChanged('two') == 'one'
                    //     ? BottomBar()
                    //     : MakerBottomBar()
                    BottomBar()),
          );
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
            'Resend Verification Email',
            style: whiteColor18BoldTextStyle,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        iconTheme: IconThemeData(color: whiteColor),
        title: Text(
          "Cozina",
          style: whiteColor26BoldTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 35,
            color: whiteColor,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
            iconSize: 33,
            color: whiteColor,
          )
        ],
      ),
      drawer: Drawer(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.15,
          ),
          Center(
            child: Icon(
              Icons.email,
              size: 130,
              color: Colors.grey.withOpacity(0.4),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Please verify your email to access Cozina.\n Click on the verification linksent on your \nEmail: email@example.com",
              maxLines: 5,
              style: blackColor16RegularTextStyle,
            ),
          ),
          SizedBox(height: height * 0.25),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "Haven't received verification email?",
              style: blackColor16RegularTextStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // ElevatedButton(
          //   onPressed: () {},
          //   child: Text("Receive verification Email"),
          //   style: ElevatedButton.styleFrom(
          //       primary: Theme.of(context).primaryColor),
          // )
          resendButton(context),
        ],
      ),
    );
  }
}
