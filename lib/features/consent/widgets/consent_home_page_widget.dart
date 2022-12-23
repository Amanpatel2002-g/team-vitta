import 'package:flutter/material.dart';

class ConsentHomePageWidget extends StatelessWidget {
  final String cardTitle;
  final String cardSubtitle;
  final Widget leadingWidget;
  const ConsentHomePageWidget({
    Key? key,
    required this.cardTitle,
    required this.cardSubtitle,
    required this.leadingWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      color: Colors.white70,
      borderOnForeground: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: leadingWidget,
            title: Text(
              cardTitle,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: Text(cardSubtitle),
            style: ListTileStyle.list,
            trailing: const Icon(
              Icons.arrow_right_outlined,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
