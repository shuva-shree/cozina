import 'package:cozina/buyer_drawer.dart';
import 'package:cozina/constants/constants.dart';
import 'package:cozina/foodMaker_drawer.dart';
import 'package:cozina/provider/provider.dart';
import 'package:cozina/screens/cart/cart_details.dart';
import 'package:cozina/screens/home/buyer_home_page.dart';
import 'package:cozina/screens/search_screen.dart/search_screen.dart';
import 'package:cozina/widgets/buyer_bottom_bar.dart';
import 'package:cozina/widgets/maker_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'maker_home_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPos = 0;

  late double height;

  late double width;

  final valueProvider = ChangeNotifierProvider<ChangeValue>((ref) {
    return ChangeValue();
  });

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Consumer(builder: (context, watch, _) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: bgColor,
          drawer: watch(valueProvider).value == 'one'
              ? BuyerMenuDrawer()
              : FoodMakerMenuDrawer(),
          appBar: AppBar(
            toolbarHeight: 70,
            // iconTheme: IconThemeData(color: whiteColor),
            title: Text('data'),

            // Container(
            //   color: Colors.black,
            //   height: 47,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         "Cozina",
            //         style: whiteColor26BoldTextStyle,
            //       ),
            //       Expanded(
            //         child: new DropdownButtonHideUnderline(
            //           child: DropdownButton<String>(
            //               dropdownColor: primaryColor,
            //               iconEnabledColor: whiteColor,
            //               value: watch(valueProvider).value,
            //               items: <DropdownMenuItem<String>>[
            //                 DropdownMenuItem(
            //                   child: Text(
            //                     "Buyer's Account",
            //                     style: whiteColor15BoldTextStyle,
            //                   ),
            //                   value: 'one',
            //                 ),
            //                 DropdownMenuItem(
            //                     child: Text(
            //                       "FoodMaker's account",
            //                       style: whiteColor15BoldTextStyle,
            //                     ),
            //                     value: 'two'),
            //               ],
            //               onChanged: (String? value) {
            //                 context.read(valueProvider).changeDropValue(value!);
            //                 // setState(() {
            //                 //   _value = value!;
            //                 // });
            //               }),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // bottom: PreferredSize(
            //   preferredSize: Size.fromHeight(70),
            //   child:
            // ),
            // actions: [
            //   IconButton(
            //     onPressed: () {
            //       Navigator.of(context)
            //           .push(MaterialPageRoute(builder: (ctx) => SearchScreen()));
            //     },
            //     icon: Icon(Icons.search),
            //     iconSize: 35,
            //     color: whiteColor,
            //   ),
            //   IconButton(
            //     onPressed: () {
            //       Navigator.of(context)
            //           .push(MaterialPageRoute(builder: (ctx) => CartDetails()));
            //     },
            //     icon: Icon(Icons.shopping_cart),
            //     iconSize: 33,
            //     color: whiteColor,
            //   )
            // ],
          ),
          body: watch(valueProvider).value == 'two'
              ? HomeScreen()
              : MakerHomePage(),
          bottomNavigationBar: watch(valueProvider).value == 'one'
              ? BottomBar()
              : MakerBottomBar(),
        ),
      );
    });
  }
}
