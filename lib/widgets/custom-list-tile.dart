import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({@required this.title, @required this.icon, this.onTap});
  final String title;
  final IconData icon;
  Function onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: ListTile(
            onTap: onTap,
            dense: true,
            leading: Icon(
              icon,
              color: Colors.orange,
              size: 20.0,
            ),
            title: Text(
              '$title',
              style: TextStyle(
                color: Colors.orange,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
          width: MediaQuery.of(context).size.width * (2 / 3) - 20,
          child: Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
