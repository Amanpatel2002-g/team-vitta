import 'package:flutter/material.dart';
import 'package:vitta/Global_widgets/commons.dart';

import 'Global_widgets/custom_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: globalScaffoldBackgroundColor),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("This is the appbar"),
        ),
        body: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child:  CustomButton(
              width: double.infinity,
              text: "Button here",
              ontap: (){},
            )),
      ),
    );
  }
}
