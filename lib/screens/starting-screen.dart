import 'package:flutter/material.dart';
import 'package:royalgroup/screens/signup-screen.dart';
import 'package:royalgroup/widgets/rounded-textfield.dart';
import 'package:royalgroup/widgets/rounded-button.dart';

class StartingScreen extends StatelessWidget {
  static const String id = 'StartingScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Icon(
              Icons.android,
              size: 200.0,
              color: Colors.grey[100],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 5.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Enter you Mobile Number',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.orange,
                    ),
                  ),
                  RoundedTextField(
                      hintText: '0300 123456 7',
                      keyboard: TextInputType.number),
                  RoundedButton(
                    title: 'NEXT',
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        SignUpScreen.id,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
