// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fireauth/fireauth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'package:vitta/Global_widgets_and_files/commons.dart';
import 'package:vitta/Global_widgets_and_files/custom_widgets.dart';

class OTPVerificationScreen extends StatelessWidget {
  final String verificationId;
  OTPVerificationScreen({
    Key? key,
    required this.verificationId,
  }) : super(key: key);

  static const String routeName = "/OTPVerificationScreen";
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  final TextEditingController _pincontroller = TextEditingController();
  final String vAndc = "VERIFY AND CONTINUE";
  final FirebaseAuth auth = FirebaseAuth.instance;

  void verifyAndSignUp() async {
    if (formKey.currentState!.validate()) {
      final PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: _pincontroller.text);
      await auth.signInWithCredential(credential);
    }
  }

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 45,
      height: 45,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Color.fromARGB(255, 249, 245, 245), spreadRadius: 3),
        ],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderColor),
      ),
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              child: Image.asset(
                "assets/images/otp_verification.jpeg",
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              "OTP Verification",
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: globalAuthScreenTextColor1,
                  fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Enter the OTP sent to the',
                style:
                    TextStyle(fontSize: 18, color: globalAuthScreenTextColor2),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Mobile Number ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: globalAuthScreenTextColor2)),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    Directionality(
                      // Specify direction if desired
                      textDirection: TextDirection.ltr,
                      child: Pinput(
                        mainAxisAlignment: MainAxisAlignment.center,
                        keyboardType: TextInputType.phone,
                        length: 6,
                        controller: _pincontroller,
                        focusNode: focusNode,
                        androidSmsAutofillMethod:
                            AndroidSmsAutofillMethod.smsUserConsentApi,
                        listenForMultipleSmsOnAndroid: true,
                        defaultPinTheme: defaultPinTheme,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "please enter the OTP";
                          } else if (value.length != 6) {
                            return "please enter the correct OTP";
                          }
                          return null;
                        },
                        // onClipboardFound: (value) {
                        //   debugPrint('onClipboardFound: $value');
                        //   pinController.setText(value);
                        // },
                        hapticFeedbackType: HapticFeedbackType.lightImpact,
                        onCompleted: (pin) {
                          debugPrint('onCompleted: $pin');
                        },
                        onChanged: (value) {
                          debugPrint('onChanged: $value');
                        },
                        cursor: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(bottom: 9),
                              width: 22,
                              height: 1,
                              color: focusedBorderColor,
                            ),
                          ],
                        ),
                        focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: focusedBorderColor),
                          ),
                        ),
                        submittedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            color: fillColor,
                            borderRadius: BorderRadius.circular(19),
                            border: Border.all(color: focusedBorderColor),
                          ),
                        ),
                        errorPinTheme: defaultPinTheme.copyBorderWith(
                          border: Border.all(color: Colors.redAccent),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Didn\'t receive OTP?',
                        style: TextStyle(
                            fontSize: 18, color: globalAuthScreenTextColor2),
                        children: const <TextSpan>[
                          TextSpan(
                              text: 'RESEND',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.red)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CustomButton(
                          text: vAndc,
                          ontap:() => verifyAndSignUp(),
                        ))
                  ],
                )),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
