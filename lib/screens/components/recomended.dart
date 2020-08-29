import 'package:flutter/material.dart';
import 'package:playground/constraits.dart';
import '../details.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomenedPlant(
            image: "assets/images/bike.jpg",
            title: "BMW Max",
            country:"Germany",
            price: 1500,
            press: (){
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen())
                    );
            },
          ),
          RecomenedPlant(
            image: "assets/images/ball.jpg",
            title: "Molten II",
            country:"USA",
            price: 50,
            press: (){
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen())
                    );
            },
          ),
          RecomenedPlant(
            image: "assets/images/pc.jpg",
            title: "Hp Elite Book",
            country:"CHINA",
            price: 1500,
            press: (){
              Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen())
                    );
            },
          ),
        ],
      ),
    );
  }
}

class RecomenedPlant extends StatelessWidget {
  const RecomenedPlant({
    Key key,
    this.image, this.title, this.country, this.price, this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding,
        right: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: primaryColor.withOpacity(0.23),
                    )
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '$title\n',
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: '$country'.toUpperCase(),
                        style: TextStyle(color: primaryColor.withOpacity(0.5))),
                  ])),
                  Spacer(),
                  Text('\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: primaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
