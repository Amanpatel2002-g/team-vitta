import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vitta/Global_widgets/commons.dart';
import 'package:vitta/Global_widgets/commons.dart';
import 'package:vitta/features/home/pages/Consent.dart';
import 'package:vitta/features/home/pages/Users.dart';
import 'package:vitta/features/home/pages/WealthPage.dart';

import '../../Global_widgets/commons.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  late double _deviceh, _devicew;
  int currentindex = 0;
  final Screens = const [
    wealthpage(),
    consent(),
    Users(),
  ];
  @override
  Widget build(BuildContext context) {
    _deviceh = MediaQuery.of(context).size.height;
    _devicew = MediaQuery.of(context).size.width;
    return Scaffold(
      body: IndexedStack(
        index: currentindex,
        children: Screens,
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (index) => setState(() {
            currentindex = index;
          }),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'home',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'home',
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
