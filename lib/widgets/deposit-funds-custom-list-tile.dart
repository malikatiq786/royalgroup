import 'package:flutter/material.dart';

class DepositFundsCustomListTile extends StatelessWidget {
  DepositFundsCustomListTile({this.showSizedBox = true, this.title, this.icon});
  final bool showSizedBox;
  final String title;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(7.0),
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: TextField(
                enabled: true,
                keyboardType: TextInputType.number,
                onChanged: (value) {},
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                  hintText: title,
                  hintStyle: TextStyle(color: Colors.black54),
                  filled: true,
                  isDense: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(7.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0),
                  ),
                ),
              ),
            ),
            showSizedBox
                ? SizedBox(
                    height: 30.0,
                    width: 10.0,
                    child: VerticalDivider(
                      width: 1.0,
                      color: Colors.grey[800],
                    ),
                  )
                : SizedBox(),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: icon),
          ],
        ),
      ),
    );
  }
}
