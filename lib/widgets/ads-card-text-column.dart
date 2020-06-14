import 'package:flutter/material.dart';

class AdsCardTextColumn extends StatelessWidget {
  AdsCardTextColumn({this.title1, this.title2, this.title3});
  final String title1;
  final String title2;
  final String title3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title1,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          title2,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Text(
          title3,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
