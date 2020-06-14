import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:royalgroup/widgets/rounded-textfield.dart';
import 'package:royalgroup/widgets/my-app-bar.dart';
import 'login-screen.dart';

class SignUpScreen extends StatelessWidget {
  static const String id = 'SignUpScreen';
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
                MyAppBar(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, LoginScreen.id);
                  },
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                  child: Text(
                    'Account Registration',
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
                      hintText: 'Name', keyboard: TextInputType.text),
                  RoundedTextField(
                      hintText: 'CNIC',
                      keyboard: TextInputType.numberWithOptions()),
                  RoundedTextField(
                      hintText: 'Email (optional)',
                      keyboard: TextInputType.emailAddress),
                  RoundedTextField(
                      hintText: 'CNIC issue date',
                      keyboard: TextInputType.datetime),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                'What is CNIC Date of issue?',
                style: TextStyle(color: Colors.orange),
              ),
            ),
            ListTile(
              title: Text('I accept Terms & Conditions'),
              leading: Checkbox(value: false, onChanged: (value) {}),
            ),
          ],
        ),
      ),
    );
  }
}
