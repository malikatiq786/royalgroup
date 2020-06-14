import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:royalgroup/screens/login-screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:royalgroup/screens/packages-screen.dart';
import 'package:royalgroup/widgets/custom-carousel-pro.dart';
import 'package:royalgroup/widgets/side-drawer.dart';
import 'package:royalgroup/widgets/home-screen-row-buttons.dart';
import 'earn-money-screen.dart';
import 'deposit-funds-screen.dart';

class HomeScreen extends StatelessWidget {
  static final String id = 'HomeScreen';
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.android,
              size: 50.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, LoginScreen.id);
              },
              child: Icon(
                FontAwesomeIcons.powerOff,
                size: 20.0,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
      drawer: SideDrawer(),
      body: Material(
        color: Colors.grey[900],
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: ListTile(
                leading: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'AHSAN RAZA',
                      style: TextStyle(fontSize: 14.0, color: Colors.white),
                    ),
                    Text(
                      'Rs. 100.00',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'View Account Limits',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        FontAwesomeIcons.syncAlt,
                        size: 20.0,
                        color: Colors.orange,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        FontAwesomeIcons.plusCircle,
                        size: 20.0,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                    ),
                    height: 140.0,
                    width: width - 10,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: CarouselPro(),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                      left: 5.0, right: 5.0, top: 80.0, bottom: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      5.0,
                    ),
                    child: Container(
                      height: 80.0,
                      color: Colors.black45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          HomeScreenButtons(
                            title: 'Earn Money',
                            icon: FontAwesomeIcons.moneyBillAlt,
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, EarnMoney.id);
                            },
                          ),
                          HomeScreenButtons(
                            title: 'Packages',
                            icon: FontAwesomeIcons.ad,
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                context,
                                Packages.id,
                              );
                            },
                          ),
                          HomeScreenButtons(
                            title: 'Deposit Funds',
                            icon: FontAwesomeIcons.creditCard,
                            onTap: () {
                              Navigator.pushReplacementNamed(
                                  context, DepositFunds.id);
                            },
                          ),
                          HomeScreenButtons(
                            title: 'Request Withdraw',
                            icon: FontAwesomeIcons.spinner,
                            onTap: () {},
                            showSizedBox: false,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: width - 10,
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                  height: 120.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      HomeScreenButtons(
                        title: 'Support Ticket',
                        icon: FontAwesomeIcons.ticketAlt,
                        showSizedBox: false,
                        onTap: () {},
                      ),
                      HomeScreenButtons(
                        title: 'Transaction History',
                        icon: FontAwesomeIcons.servicestack,
                        showSizedBox: false,
                        onTap: () {},
                      ),
                      HomeScreenButtons(
                        title: 'My Income',
                        icon: FontAwesomeIcons.moneyBillAlt,
                        showSizedBox: false,
                        onTap: () {},
                      ),
                      HomeScreenButtons(
                        title: 'Marketing',
                        icon: FontAwesomeIcons.infoCircle,
                        onTap: () {},
                        showSizedBox: false,
                      ),
                    ],
                  ),
                ),
//                Container(
//                  width: width - 15,
//                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
//                  height: 120.0,
//                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    children: <Widget>[
//                      HomeScreenButtons(),
//                      HomeScreenButtons(
//
//                      ),
//                    ],
//                  ),
//                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
