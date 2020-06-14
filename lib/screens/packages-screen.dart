import 'package:flutter/material.dart';
import 'package:royalgroup/widgets/my-app-bar.dart';
import 'home-screen.dart';
import 'package:royalgroup/widgets/custom-ads-card.dart';

class Packages extends StatelessWidget {
  static final String id = 'Packages.id';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[900],
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MyAppBar(
            onPressed: () {
              Navigator.pushReplacementNamed(context, HomeScreen.id);
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
            child: Text(
              'View Your ADs',
              style: TextStyle(color: Colors.orangeAccent[200], fontSize: 28),
            ),
          ),
          ListView(
            shrinkWrap: true,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  CustomAdsCard(
                    buttonTitle: 'View',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
