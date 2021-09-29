import 'package:cozina/constants/constants.dart';
import 'package:cozina/models/models.dart';
import 'package:cozina/screens/food_screen/food_screen.dart';
import 'package:flutter/material.dart';

class PopularCuisine extends StatefulWidget {
  const PopularCuisine({
    Key? key,
  }) : super(key: key);

  @override
  _PopularCuisineState createState() => _PopularCuisineState();
}

class _PopularCuisineState extends State<PopularCuisine> {
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
      body: GridView.builder(
          itemCount: foodCategoryList.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2.5 / 1.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          itemBuilder: (BuildContext ctx, index) {
            final item = foodCategoryList[index];
            return Stack(children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  height: height * 0.3,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(item["image"]!)),
              Positioned(
                top: 20,
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
                    children: [
                      Text(
                        "Cuisine",
                        style: greyColor16SemiBoldTextStyle,
                      ),
                      heightSpace,
                      Text(
                        item['category']!,
                        style: whiteColor18BoldTextStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.black54,
                          ),
                          child: TextButton(
                            onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (ctx) => FoodScreen())),
                            child: Text(
                              "View Foods",
                              style: whiteColor18BoldTextStyle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ),
            ]);
          }),
    );
  }
}
