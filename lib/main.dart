import 'package:flutter/material.dart';
import 'package:vitta/Global_widgets/commons.dart';
import 'package:vitta/features/auth/screens/auth_screen.dart';
import 'package:vitta/features/home/home_screen.dart';
import 'package:vitta/routes/route.dart';

import 'Global_widgets/custom_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // onGenerateRoute: ((settings) => generateRoute(settings)),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: globalScaffoldBackgroundColor),
      home: const homescreen(),
    );
  }
}
