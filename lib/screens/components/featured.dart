import 'package:flutter/material.dart';
import '../../constraits.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
       child: Row(
        children: <Widget>[
          FeaturedPlant(
            image: "assets/images/court.jpg",
            press: (){},
          ),
          FeaturedPlant(
            image: "assets/images/spider.jpg",
            press: (){},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlant extends StatelessWidget {
  const FeaturedPlant({
    Key key,
    this.image, this.press,
  }) : super(key: key);

  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: defaultPadding,
            top: defaultPadding / 2,
            bottom: defaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("$image")
              ),
            ),
      ),
    );
  }
}
