// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextInputField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hinttext;
  final String labelText;
  final int maxLines;
  const CustomTextInputField({
    Key? key,
    required this.textEditingController, required this.hinttext, this.maxLines = 1, required this.labelText,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hinttext,
        hintStyle: const TextStyle(color: Colors.black),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black38)),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black38)),
      ),
    );
  }
}
