import 'package:flutter/material.dart';

class ConfirmTransactionTitleText extends StatelessWidget {
  ConfirmTransactionTitleText({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16.0),
      ),
    );
  }
}
