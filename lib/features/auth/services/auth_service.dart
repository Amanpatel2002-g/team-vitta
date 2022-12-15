import 'package:fireauth/fireauth.dart';
import 'package:flutter/animation.dart';

// 9630547639
class AuthServices {
  FirebaseAuth auth = FirebaseAuth.instance;
  verifyPhoneNumber(String pn,
      void Function(String verificationId, int? resendToken) codeSent) async {
    try {
      await auth.verifyPhoneNumber(
        phoneNumber: pn,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            print('The provided phone number is not valid.');
          }
        },
        codeSent: codeSent,
        timeout: const Duration(seconds: 0),
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
        },
      );
    } catch (e) {
      print(e.toString());
    }
  }
}
