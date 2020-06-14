import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ads-card-text-column.dart';
import 'ads-custom-list-tile.dart';

class CustomAdsCard extends StatelessWidget {
  CustomAdsCard({this.buttonTitle});
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: Colors.black38,
        border: Border.all(
          color: Colors.grey[800],
          width: 2.0,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(
            10.0,
          ),
        ),
      ),
      width: width - 20,
      height: 210,
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            'Monthly Super Duper',
            style: TextStyle(color: Colors.orangeAccent[200], fontSize: 24),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                AdsCardTextColumn(
                    title1: 'MINS', title2: '3000', title3: 'On-net'),
                AdsCardTextColumn(
                    title1: 'MINS', title2: '150', title3: 'Off-net'),
                AdsCardTextColumn(
                    title1: 'DATA', title2: '3072', title3: 'MBs'),
                AdsCardTextColumn(
                    title1: 'SMS', title2: '3000', title3: 'All-net'),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
            child: Divider(
              color: Colors.grey[800],
              thickness: 1.0,
              height: 10,
            ),
          ),
          AdsCustomListTile(buttonTitle: buttonTitle),
        ],
      ),
    );
  }
}
