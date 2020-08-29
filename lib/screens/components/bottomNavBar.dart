import 'package:flutter/material.dart';
import '../../constraits.dart';

class BottomNavBAr extends StatelessWidget {
  const BottomNavBAr({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: defaultPadding*2,
        right: defaultPadding*2,
        bottom: defaultPadding/2,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: primaryColor.withOpacity(0.38)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.brightness_auto,color: primaryColor), onPressed:(){}),
          IconButton(icon: Icon(Icons.favorite_border), onPressed:(){}),
          IconButton(icon: Icon(Icons.person_outline), onPressed:(){}),
        ],
      ),
    );
  }
}
