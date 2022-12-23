import 'package:flutter/material.dart';
import 'package:vitta/Global_widgets_and_files/commons.dart';
import 'package:vitta/Global_widgets_and_files/custom_widgets.dart';
import 'package:vitta/features/auth/screens/otp_vecification_screen.dart';
import 'package:vitta/features/auth/services/auth_service.dart';
import 'package:vitta/features/auth/widgets/textInputField.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _mobilNumberTextEditingController =
      TextEditingController();
  final _authKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _mobilNumberTextEditingController.dispose();
    super.dispose();
  }

  final AuthServices _authServices = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: Image.asset(
                "assets/images/login.jpg",
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Enter your Mobile Number",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: globalAuthScreenTextColor1),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: TextSpan(
                text: 'We  will  send  ',
                style:
                    TextStyle(fontSize: 18, color: globalAuthScreenTextColor2),
                children: <TextSpan>[
                  TextSpan(
                      text: '6  digit ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: globalAuthScreenTextColor2)),
                  TextSpan(
                      text: 'verification  code',
                      style: TextStyle(
                          fontSize: 18, color: globalAuthScreenTextColor2)),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Form(
                key: _authKey,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.40,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: CustomTextInputField(
                          textEditingController:
                              _mobilNumberTextEditingController,
                          hinttext: "Enter your mobile number",
                          labelText: "Mobile Number",
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: CustomButton(
                          text: "GET OTP",
                          ontap: () {
                            if (_authKey.currentState!.validate()) {
                              final String pn =
                                  "+91${_mobilNumberTextEditingController.text}";
                              _authServices.verifyPhoneNumber(pn,
                                  (verificationId, resendToken) {
                                Navigator.pushNamed(
                                    context, OTPVerificationScreen.routeName, arguments: verificationId);
                              });
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
