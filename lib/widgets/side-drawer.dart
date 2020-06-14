import 'package:flutter/material.dart';
import 'package:royalgroup/screens/change-mpin-screen.dart';
import 'package:royalgroup/widgets/custom-list-tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              color: Colors.grey[900],
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'AHSAN RAZA',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Account # 03366309562',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Material(
              color: Colors.grey[800],
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CustomListTile(
                        title: 'Earn Money',
                        icon: FontAwesomeIcons.moneyBillAlt,
                      ),
                      CustomListTile(
                        title: 'Packages',
                        icon: FontAwesomeIcons.ad,
                      ),
                      CustomListTile(
                        title: 'Deposit Funds',
                        icon: FontAwesomeIcons.creditCard,
                      ),
                      CustomListTile(
                        title: 'Request Withdraw',
                        icon: FontAwesomeIcons.spinner,
                        onTap: () {},
                      ),
                      CustomListTile(
                        title: 'Funds Transfer',
                        icon: FontAwesomeIcons.exchangeAlt,
                      ),
                      CustomListTile(
                        title: 'Transaction History',
                        icon: FontAwesomeIcons.servicestack,
                      ),
                      CustomListTile(
                        title: 'My Income',
                        icon: FontAwesomeIcons.moneyBillAlt,
                      ),
                      CustomListTile(
                        title: 'Marketing',
                        icon: FontAwesomeIcons.infoCircle,
                      ),
                      CustomListTile(
                        title: 'General Settings',
                        icon: FontAwesomeIcons.cogs,
                      ),
                      CustomListTile(
                        title: 'Support Ticket',
                        icon: FontAwesomeIcons.ticketAlt,
                      ),
                    ],
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
