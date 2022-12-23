// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: sort_child_properties_last
import 'package:flutter/material.dart';

import 'package:vitta/Global_widgets_and_files/commons.dart';

class ConsetWidget extends StatelessWidget {
  final Widget? leadingWidget;
  final String cardTitle;
  final String cardSubtitle;
  final VoidCallback giveConsentButton;
  const ConsetWidget({
    Key? key,
    this.leadingWidget,
    required this.cardTitle,
    required this.cardSubtitle,
    required this.giveConsentButton,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      color: Colors.white70,
      borderOnForeground: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: leadingWidget,
            title: Text(cardTitle),
            subtitle: Text(cardSubtitle),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                onPressed: giveConsentButton,
                child: const Text(
                  'Give Consent',
                  style: TextStyle(color: Colors.white),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(globalButtonColor)),
              ),
              const SizedBox(
                width: 20,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'REJECT',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                          Color.fromARGB(255, 235, 232, 232)))),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ],
      ),
    );
  }
}
