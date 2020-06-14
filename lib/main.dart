import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/starting-screen.dart';
import 'screens/signup-screen.dart';
import 'screens/login-screen.dart';
import 'screens/forgot-mpin-screen.dart';
import 'screens/home-screen.dart';
import 'screens/change-mpin-screen.dart';
import 'screens/earn-money-screen.dart';
import 'screens/packages-screen.dart';
import 'screens/deposit-funds-screen.dart';
import 'screens/confirm-transaction-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        StartingScreen.id: (context) => SafeArea(child: StartingScreen()),
        SignUpScreen.id: (context) => SafeArea(child: SignUpScreen()),
        LoginScreen.id: (context) => SafeArea(child: LoginScreen()),
        ForgotMPIN.id: (context) => SafeArea(child: ForgotMPIN()),
        HomeScreen.id: (context) => SafeArea(child: HomeScreen()),
        ChangeMPIN.id: (context) => SafeArea(child: ChangeMPIN()),
        EarnMoney.id: (context) => SafeArea(child: EarnMoney()),
        Packages.id: (context) => SafeArea(child: Packages()),
        DepositFunds.id: (context) => SafeArea(child: DepositFunds()),
        ConfirmTransaction.id: (context) =>
            SafeArea(child: ConfirmTransaction()),
      },
    );
  }
}
