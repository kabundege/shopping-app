import 'package:flutter/material.dart';
import 'package:playground/constraits.dart';
import 'components/imageAndIcon.dart';
import 'components/titleAndPrice.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            ImageAndIcons(size: size), 
            TitleAndPrice(title: 'BMW Max', country: "Germany", price: 1500),
            SizedBox(height: defaultPadding),
            Row(
              children: <Widget>[
                SizedBox(
                  width: size.width/2,
                  height: 84,
                  child: FlatButton(
                    onPressed: (){},
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.only(topRight: Radius.circular(20))
                   ),
                   color: primaryColor,
                    child: Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 16),)
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: (){}, 
                      child: Text("Description"),
                      )
                    )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
