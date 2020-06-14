import 'package:flutter/material.dart';
import 'package:royalgroup/widgets/my-app-bar.dart';
import 'package:royalgroup/widgets/rounded-textfield.dart';

class ForgotMPIN extends StatelessWidget {
  static final String id = 'ForgotMPIN';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      body: Material(
        color: Colors.grey[900],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MyAppBar(),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                  child: Text(
                    'Forgot MPIN',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RoundedTextField(
                      hintText: 'Enter CNIC',
                      keyboard: TextInputType.numberWithOptions()),
                  RoundedTextField(
                      hintText: 'Select Date of Birth',
                      keyboard: TextInputType.datetime),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
