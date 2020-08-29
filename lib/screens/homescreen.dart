import 'package:flutter/material.dart';
import 'package:playground/screens/components/body.dart';
import 'components/bottomNavBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: BottomNavBAr(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
        elevation: 0,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
      );
  }
}
