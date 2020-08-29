import 'package:flutter/material.dart';
import '../../constraits.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding*3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: defaultPadding * 3),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        padding: EdgeInsets.symmetric(
                            horizontal: defaultPadding),
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
                    padding: EdgeInsets.all(defaultPadding/2),
                    height: 62,
                    width: 62,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 15),
                            blurRadius: 22,
                            color: primaryColor.withOpacity(0.3)),
                        BoxShadow(
                            offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
                      ],
                    ),
                    child: IconButton(icon: Icon(Icons.lightbulb_outline), onPressed: (){}),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
                    padding: EdgeInsets.all(defaultPadding/2),
                    height: 62,
                    width: 62,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 15),
                            blurRadius: 22,
                            color: primaryColor.withOpacity(0.3)),
                        BoxShadow(
                            offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
                      ],
                    ),
                    child: IconButton(icon: Icon(Icons.all_out), onPressed: (){}),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
                    padding: EdgeInsets.all(defaultPadding/2),
                    height: 62,
                    width: 62,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 15),
                            blurRadius: 22,
                            color: primaryColor.withOpacity(0.3)),
                        BoxShadow(
                            offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
                      ],
                    ),
                    child: IconButton(icon: Icon(Icons.all_inclusive), onPressed: (){}),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: size.height * 0.001),
                    padding: EdgeInsets.all(defaultPadding/2),
                    height: 62,
                    width: 62,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 15),
                            blurRadius: 22,
                            color: primaryColor.withOpacity(0.3)),
                        BoxShadow(
                            offset: Offset(-15, -15), blurRadius: 20, color: Colors.white)
                      ],
                    ),
                    child: IconButton(icon: Icon(Icons.call_split), onPressed: (){}),
                  )
                ],
              ),
            )),
            Container(
              width: size.width * 0.75,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(63),
                      topLeft: Radius.circular(43)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 60,
                        color: primaryColor.withOpacity(0.4))
                  ],
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      alignment: Alignment.centerLeft,
                      image: AssetImage("assets/images/bike.jpg"))),
            )
          ],
        ),
      ),
    );
  }
}
