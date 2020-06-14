import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {@required this.title,
      @required this.onPressed,
      this.width = double.infinity,
      this.fontSize = 16});
  final String title;
  final Function onPressed;
  final double width;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5.0,
      ),
      child: MaterialButton(
        elevation: 5.0,
        minWidth: width,
        height: 45.0,
        color: Colors.red[800],
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: fontSize),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
