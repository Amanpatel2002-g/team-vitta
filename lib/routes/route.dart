import 'package:flutter/material.dart';
import 'package:vitta/features/auth/screens/otp_vecification_screen.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case OTPVerificationScreen.routeName:
      String id = routeSettings.arguments as String;
      return MaterialPageRoute(
          settings: routeSettings, builder: ((_) => OTPVerificationScreen(verificationId: id,)));
    default:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (_) => const Scaffold(
                body: Center(
                  child: Text("404 Screen doesn't exist"),
                ),
              ));
  }
}
