import 'package:flutter/material.dart';

class HomeScreenButtons extends StatelessWidget {
  HomeScreenButtons(
      {this.icon, this.onTap, this.title, this.showSizedBox = true});
  final String title;
  final IconData icon;
  Function onTap;
  final bool showSizedBox;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        icon,
                        color: Colors.orange[300],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 7.0, bottom: 8.0),
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.orange[300],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                showSizedBox
                    ? SizedBox(
                        child: VerticalDivider(
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                      )
                    : SizedBox()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
