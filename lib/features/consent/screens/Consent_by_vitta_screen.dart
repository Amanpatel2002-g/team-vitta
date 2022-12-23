import 'package:flutter/material.dart';
import 'package:vitta/Global_widgets_and_files/custom_widgets.dart';
import 'package:vitta/features/consent/screens/in_app_browser.dart';
import 'package:vitta/features/consent/services/consent_service.dart';
import 'package:vitta/features/consent/widgets/consent_widget.dart';

class ConsentForVitta extends StatelessWidget {
  static const String routeName = "/consentForvittaScreen";
  final ConsentService consentService = ConsentService();
  ConsentForVitta({super.key});
  void consentButton(BuildContext context) async {
    // ignore: avoid_print
    print("came to consent Button");
    var newcontext = context;
    String url = await consentService.initializeTheRequest();
    Navigator.pushNamed(newcontext, InAppBrowserScreen.routeName,
        arguments: url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppBar(text: "Consent For Vitta"),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ConsetWidget(
          cardTitle: "Consent for consent",
          cardSubtitle: "consent for wealth managment",
          giveConsentButton: () => consentButton(context),
        ),
      )),
    );
  }
}
