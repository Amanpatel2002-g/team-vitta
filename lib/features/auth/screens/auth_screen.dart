import 'package:flutter/material.dart';
import 'package:vitta/Global_widgets/custom_widgets.dart';
import 'package:vitta/features/auth/widgets/textInputField.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            child: Image.asset("assets/images/login.jpg"),
          ),
          const SizedBox(
            height: 60,
          ),
          Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CustomTextInputField(
                  textEditingController: _textEditingController,
                  hinttext: "Enter your Mobile Number",
                  labelText: "Mobile*",
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: CustomButton(text: "GET OTP", ontap: () {}),
              )
            ],
          ))
        ],
      ),
    );
  }
}
