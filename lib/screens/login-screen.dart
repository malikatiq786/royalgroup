import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:royalgroup/screens/forgot-mpin-screen.dart';
import 'package:royalgroup/screens/home-screen.dart';
import 'package:royalgroup/widgets/rounded-textfield.dart';
import 'package:royalgroup/widgets/rounded-button.dart';
import 'signup-screen.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'LoginScreen';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Icon(
              Icons.android,
              size: 200.0,
              color: Colors.grey[100],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 5.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RoundedTextField(
                      hintText: '0000 123456 7',
                      keyboard: TextInputType.number),
                  RoundedTextField(
                      hintText: 'Enter MPIN', keyboard: TextInputType.number),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, ForgotMPIN.id);
                    },
                    child: Container(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Forgot MPIN?',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    title: RoundedButton(
                      title: 'NEXT',
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          HomeScreen.id,
                        );
                      },
                    ),
                    trailing: GestureDetector(
                      child: Icon(
                        Icons.fingerprint,
                        color: Colors.orange,
                        size: 40.0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, SignUpScreen.id);
                    },
                    child: Text(
                      'Create New Account?',
                      style: TextStyle(
                          color: Colors.orangeAccent[200], fontSize: 16.0),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
