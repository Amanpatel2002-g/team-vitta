// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:vitta/Global_widgets/commons.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.height,
    this.width,
    required this.text,
    required this.ontap,
  }) : super(key: key);
  final double? height;
  final double? width;
  final String text;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          surfaceTintColor: const Color.fromARGB(255, 164, 107, 15),
          backgroundColor: globalButtonColor),
      child: Text(
        text,
        style: TextStyle(
            color: globalScaffoldBackgroundColor,
            fontWeight: FontWeight.bold,
            fontSize: 18),
      ),
    );
  }
}

AppBar customeAppBar({required text}) {
  return AppBar(
    title: Text(text),
    backgroundColor: globalAppBarColor,
  );
}
