import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomIndicatorState();
  }
}

class CustomIndicatorState extends State<CustomIndicator> {
  int currentPos = 0;
  List<String> listPaths = [
    "assets/images/image7.jpg",
    "assets/images/image8.jpg",
    "assets/images/image9.jpg",
    "assets/images/image7.jpg",
    "assets/images/image8.jpg",
    "assets/images/image9.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        CarouselSlider.builder(
          itemCount: listPaths.length,
          options: CarouselOptions(
              aspectRatio: 16 / 9,
              autoPlay: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentPos = index;
                });
              }),
          itemBuilder: (context, index, _) {
            return Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(listPaths[index]),
                  fit: BoxFit.fill,
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 5),
              // child: FittedBox(
              //   fit: BoxFit.fill,
              //   child: Image.asset(listPaths[index]),
              // )
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: listPaths.map((url) {
            int index = listPaths.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentPos == index
                    ? Color.fromRGBO(0, 0, 0, 0.9)
                    : Color.fromRGBO(0, 0, 0, 0.4),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
