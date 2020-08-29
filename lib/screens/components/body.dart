import 'package:flutter/material.dart';
import 'package:playground/constraits.dart';
import 'package:playground/screens/components/headerWithSearch.dart';
import 'package:playground/screens/components/recomended.dart';
import 'package:playground/screens/components/title_with_more_Bttn.dart';

import 'featured.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //it provides us total height and with of our screen
    Size size = MediaQuery.of(context).size;
    //and it enables scrolling on small devices
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Recomended", press: () {}),
          //it will cover 40% of our total width
          RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured', press: () {}),
          FeaturedPlants(),
          SizedBox(height: defaultPadding)
        ],
      ),
    );
  }
}
