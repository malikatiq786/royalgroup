import 'package:flutter/material.dart';
import 'package:royalgroup/screens/confirm-transaction-screen.dart';
import 'package:royalgroup/widgets/deposit-funds-custom-list-tile.dart';
import 'package:royalgroup/widgets/my-app-bar.dart';
import 'home-screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DepositFunds extends StatelessWidget {
  static final String id = 'DepositFunds';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pushReplacementNamed(context, ConfirmTransaction.id);
        },
      ),
      body: Material(
        color: Colors.grey[900],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MyAppBar(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, HomeScreen.id);
                  },
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                  child: Text(
                    'Deposit Funds',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.orangeAccent[200],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: DepositFundsCustomListTile(
                        title: 'Enter receiver Mobile Account Number',
                        icon: Icon(
                          FontAwesomeIcons.addressBook,
                          color: Colors.red,
                          size: 25.0,
                        )),
                  ),
                  DepositFundsCustomListTile(
                    showSizedBox: false,
                    title: 'Enter Amount',
                    icon: Text(
                      'Fee\nRs 0.00',
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
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
