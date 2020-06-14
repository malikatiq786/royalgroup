import 'package:flutter/material.dart';
import 'package:royalgroup/screens/home-screen.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({this.onPressed});
  Function onPressed;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      leading: GestureDetector(
        onTap: onPressed,
        child: Icon(
          Icons.arrow_back,
        ),
      ),
      title: Icon(
        Icons.android,
        size: 50.0,
      ),
    );
  }
}
