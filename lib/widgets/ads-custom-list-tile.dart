import 'package:flutter/material.dart';
import 'rounded-button.dart';

class AdsCustomListTile extends StatelessWidget {
  AdsCustomListTile({this.buttonTitle});
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: <Widget>[
                Text(
                  'Rs.650',
                  style: TextStyle(
                      color: Colors.orangeAccent[200], fontSize: 20.0),
                ),
                Text(
                  '  Incl.',
                  style: TextStyle(color: Colors.white, fontSize: 13.0),
                ),
                Text(
                  'Tax',
                  style: TextStyle(color: Colors.white, fontSize: 13.0),
                ),
              ],
            ),
            Text(
              'Validity: 30 days (1 GB Extra)',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        RoundedButton(
          title: buttonTitle,
          onPressed: () {},
          width: 100.0,
          fontSize: 20,
        ),
      ],
    );
  }
}
