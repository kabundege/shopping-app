import 'package:flutter/material.dart';
import 'package:playground/constraits.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: defaultPadding * 2.5),
      height: size.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left:defaultPadding,
              right: defaultPadding,
              bottom: 36 + defaultPadding ),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36)
              )
              ),
            child: Row(
              children: <Widget>[
                Text(
                  'Hi UiShopy!', 
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: Colors.white,fontWeight: FontWeight.bold)
                    ),
                Spacer(),
                Icon(Icons.shopping_cart,color: Colors.white,size: 40.0,)
              ],
            ),
            ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                height: 54,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: defaultPadding),
                padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: primaryColor.withOpacity(0.23)
                    )
                  ]
                ),
                child: TextField(
                  onChanged: (value){},
                    decoration: InputDecoration(
                      hintText: "search",
                      hintStyle: TextStyle(color: primaryColor.withOpacity(0.5)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: IconButton(icon: Icon(Icons.search), color: primaryColor, onPressed: (){})
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
