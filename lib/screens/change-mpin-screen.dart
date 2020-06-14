import 'package:flutter/material.dart';
import 'package:royalgroup/widgets/rounded-textfield.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:royalgroup/widgets/my-app-bar.dart';
import 'login-screen.dart';

class ChangeMPIN extends StatelessWidget {
  static final String id = 'ChangeMPIN';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        isExtended: false,
        backgroundColor: Colors.orangeAccent,
        child: Icon(
          Icons.done_all,
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
                    'Change MPIN',
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
                      hintText: 'Enter 4 digit MPIN',
                      keyboard: TextInputType.number),
                  RoundedTextField(
                      hintText: 'New MPIN', keyboard: TextInputType.number),
                  RoundedTextField(
                      hintText: 'Confirm MPIN', keyboard: TextInputType.number),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.circle,
                      color: Colors.orange,
                      size: 15.0,
                    ),
                    title: Text(
                      'Your MPIN should be of 4 digits only',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      FontAwesomeIcons.circle,
                      color: Colors.orange,
                      size: 15.0,
                    ),
                    title: Text(
                      'Previously used MPIN cannot be set  as your new MPIn',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
