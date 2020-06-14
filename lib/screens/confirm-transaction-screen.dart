import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:royalgroup/screens/deposit-funds-screen.dart';
import 'deposit-funds-screen.dart';
import 'package:royalgroup/widgets/my-app-bar.dart';
import 'package:royalgroup/widgets/confirm-transaction-title-text.dart';
import 'package:royalgroup/widgets/confirm-transaction-value-text.dart';
import 'package:royalgroup/widgets/rounded-textfield.dart';

class ConfirmTransaction extends StatelessWidget {
  static final String id = 'ConfirmTransaction';
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MyAppBar(
            onPressed: () {
              Navigator.pushReplacementNamed(context, DepositFunds.id);
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
            child: Text(
              'Conform Transaction',
              style: TextStyle(color: Colors.orangeAccent[200], fontSize: 28.0),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ConfirmTransactionTitleText(
                  title: 'Amount',
                ),
                ConfirmTransactionValueText(
                  title: 'Rs 30,000.00',
                ),
                ConfirmTransactionTitleText(
                  title: 'Fee',
                ),
                ConfirmTransactionValueText(
                  title: 'Rs 0.00',
                ),
                ConfirmTransactionTitleText(
                  title: 'Receiver Name',
                ),
                ConfirmTransactionValueText(
                  title: 'Ahmad Arslan',
                ),
                ConfirmTransactionTitleText(
                  title: 'Receiver Number',
                ),
                ConfirmTransactionValueText(
                  title: '03336005234',
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.fingerprint,
                      size: 20.0,
                      color: Colors.orangeAccent[200],
                    ),
                    Text(
                      '  Use Touch ID',
                      style: TextStyle(color: Colors.orangeAccent[200]),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    'or',
                    style: TextStyle(
                      color: Colors.orangeAccent[200],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.black87),
                          onChanged: (value) {},
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: 'Enter MPIN',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 18.0,
                            ),
                            filled: true,
                            isDense: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(7.0),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 1.0),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.orangeAccent[200],
                        onPressed: () {},
                        child: Icon(Icons.done_all),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
