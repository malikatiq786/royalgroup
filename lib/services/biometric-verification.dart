import 'package:local_auth/local_auth.dart';
import 'package:flutter/services.dart';

class BiometricVerification {
  final LocalAuthentication auth = LocalAuthentication();
  Future isBiometricAuthenticated() async {
    try {
      bool canCheckBiometrics = await auth.canCheckBiometrics;
      return canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future<void> getAvailableBiometrics() async {
    try {
      List<BiometricType> availableBiometrics =
          await auth.getAvailableBiometrics();
      return availableBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future<void> authenticate() async {
    try {
      bool authenticated = await auth.authenticateWithBiometrics(
          localizedReason: 'Scan your fingerprint to authenticate',
          useErrorDialogs: true,
          stickyAuth: true);
      return authenticated;
    } on PlatformException catch (e) {
      print(e);
    }
  }

  void cancelAuthentication() {
    auth.stopAuthentication();
  }
}
