import 'package:flutter/material.dart';
import 'package:vitta/features/auth/screens/otp_vecification_screen.dart';
import 'package:vitta/features/consent/screens/Consent_by_vitta_screen.dart';
import 'package:vitta/features/consent/screens/in_app_browser.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case OTPVerificationScreen.routeName:
      String id = routeSettings.arguments as String;
      return MaterialPageRoute(
          settings: routeSettings,
          builder: ((_) => OTPVerificationScreen(
                verificationId: id,
              )));
    case InAppBrowserScreen.routeName:
      String urlString = routeSettings.arguments as String;
      return MaterialPageRoute(
          settings: routeSettings,
          builder: ((_) => InAppBrowserScreen(
                url: urlString,
              )));
    case ConsentForVitta.routeName:
      return MaterialPageRoute(builder: (_) => ConsentForVitta());
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
