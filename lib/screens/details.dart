import 'package:flutter/material.dart';
import 'package:playground/constraits.dart';
import 'components/imageAndIcon.dart';
import 'components/titleAndPrice.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key key,
    this.image,
    this.price,
    this.title,
    this.country
  }) : super(key: key);
  final String title,image,country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              ImageAndIcons(size: size,image: image),
              TitleAndPrice(title: title, country: country, price: price),
              SizedBox(height: defaultPadding),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: size.width / 2,
                    height: 84,
                    child: FlatButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.only(topRight: Radius.circular(20))),
                        color: primaryColor,
                        child: Text(
                          "Buy Now",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                  ),
                  Expanded(
                      child: FlatButton(
                    onPressed: () {},
                    child: Text("Description"),
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
