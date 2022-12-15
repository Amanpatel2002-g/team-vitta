// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class CustomTextInputField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinttext;
  final String labelText;
  final int maxLines;
  const CustomTextInputField({
    Key? key,
    required this.textEditingController,
    required this.hinttext,
    this.maxLines = 1,
    required this.labelText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      controller: textEditingController,
      style: const TextStyle(fontSize: 20),
      decoration: const InputDecoration(
        labelText: 'Phone Number',
        border: OutlineInputBorder(
            borderSide: BorderSide(),
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
      initialCountryCode: 'IN',
      
    );
  }
}
