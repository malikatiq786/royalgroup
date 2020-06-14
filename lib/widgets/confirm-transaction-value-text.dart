import 'package:flutter/material.dart';

class ConfirmTransactionValueText extends StatelessWidget {
  ConfirmTransactionValueText({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: TextStyle(color: Colors.orangeAccent[200], fontSize: 18.0),
      ),
    );
  }
}
