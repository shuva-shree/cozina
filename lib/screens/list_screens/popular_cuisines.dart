import 'package:cozina/constants/constants.dart';
import 'package:cozina/models/models.dart';
import 'package:cozina/screens/food_screen/food_screen.dart';
import 'package:cozina/screens/list_screens/cuisine_food_list.dart';
import 'package:flutter/material.dart';

class PopularCuisine extends StatefulWidget {
  const PopularCuisine({
    Key? key,
  }) : super(key: key);

  @override
  _PopularCuisineState createState() => _PopularCuisineState();
}

class _PopularCuisineState extends State<PopularCuisine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: whiteColor),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "Cuisines",
              style: whiteColor26BoldTextStyle,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            )
          ],
        ),
        body: PopularCuisineList());
  }
}

class PopularCuisineList extends StatefulWidget {
  const PopularCuisineList({Key? key}) : super(key: key);

  @override
  _PopularCuisineListState createState() => _PopularCuisineListState();
}

class _PopularCuisineListState extends State<PopularCuisineList> {
  late double height;
  late double width;

  final foodCategoryList = [
    {
      'image': 'assets/images/image9.jpg',
      'category': 'South Indian',
    },
    {
      'image': 'assets/images/image11.jpg',
      'category': 'Chinese',
    },
    {
      'image': 'assets/images/image11.jpg',
      'category': 'Diet Food',
    },
    {
      'image': 'assets/images/image12.jpeg',
      'category': 'Italian',
    },
    {
      'image': 'assets/images/image9.jpg',
      'category': 'South Indian',
    },
    {
      'image': 'assets/images/image9.jpg',
      'category': 'South Indian',
    },
    {
      'image': 'assets/images/image9.jpg',
      'category': 'South Indian',
    },
    {
      'image': 'assets/images/image9.jpg',
      'category': 'South Indian',
    },
    {
      'image': 'assets/images/image9.jpg',
      'category': 'South Indian',
    },
    {
      'image': 'assets/images/image8.jpg',
      'category': 'Fast Food',
    },
  ];
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return GridView.builder(
        itemCount: foodCategoryList.length,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 2.5 / 3,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (BuildContext ctx, index) {
          final item = foodCategoryList[index];
          return Stack(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.3,
                width: 200,
                decoration: BoxDecoration(
                  //
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(item["image"]!),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Opacity(
                //   opacity: 0.8,
                //   child: Image.asset(
                //     item["image"]!,
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 7),
                height: height * 0.3,
                width: 200,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      colors: [
                        blackColor.withOpacity(0.15),
                        blackColor.withOpacity(0.7),
                        blackColor
                      ],
                      stops: [0.2, 0.5, 0.85],
                      end: Alignment.bottomCenter),
                  borderRadius: BorderRadius.circular(10),
                  // image: DecorationImage(
                  //   image: AssetImage(item["image"]!),
                  //   fit: BoxFit.cover,
                  // ),
                ),
                // child: Image.asset(item["image"]!)
              ),
            ),

            Positioned(
              bottom: 30,
              left: 20,
              // child: Padding(
              //   padding: EdgeInsets.only(
              //     left: index == 0 ? fixPadding * 2.0 : 0.0,
              //     right: index == foodCategoryList.length - 1
              //         ? fixPadding * 2.0
              //         : fixPadding * 1.5,
              //   ),
              child: InkWell(
                // onTap: () => Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => AllRestaurants()),
                // ),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(5),
                      //   color: Colors.black26,
                      // ),
                      child: Text(
                        "Cuisine",
                        style: whiteColor15BoldTextStyle,
                      ),
                    ),
                    heightSpace,
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(5),
                      //   color: Colors.black26,
                      // ),
                      child: Text(
                        item['category']!,
                        style: whiteColor20BoldTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => CuisinieFood()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 30,
                        width: 145,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: primaryColor,
                        ),
                        child: Text(
                          "View Foods",
                          style: whiteColor18BoldTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // ),
          ]);
        });
  }
}
