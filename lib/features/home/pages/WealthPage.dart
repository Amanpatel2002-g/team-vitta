import 'package:flutter/material.dart';
import 'package:vitta/features/home/pages/wealth%20page/chartss.dart';

class wealthpage extends StatefulWidget {
  const wealthpage({super.key});

  @override
  State<wealthpage> createState() => _wealthpageState();
}

class _wealthpageState extends State<wealthpage> {
  late double _deviceh, _devicew;
  @override
  Widget build(BuildContext context) => const DefaultTabController(
        length: 2,
        child: Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                elevation: 20,
                shadowColor: Colors.black,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                flexibleSpace: FlexibleSpaceBar(
                  background: Chartss(),
                ),
                expandedHeight: 200,
                bottom: TabBar(
                  labelColor: Color.fromARGB(255, 6, 65, 113),
                  tabs: [
                    Tab(
                      text: 'ANALYSIS',
                    ),
                    Tab(
                      text: 'DASHBOARD',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
// flexibleSpace: Column(
//           children: [
//             Container(
//               child: const Text('helo'),
//               color: Colors.red,
//             ),
//             Container(child: const Text('helo')),
//           ],
//         ),


// SliverAppBar(
//                 elevation: 20,
//                 shadowColor: Colors.black,
//                 backgroundColor: Color.fromARGB(255, 255, 255, 255),
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: Chartss(),
//                 ),
//                 expandedHeight: 200,
//                 bottom: TabBar(
//                   labelColor: Color.fromARGB(255, 6, 65, 113),
//                   tabs: [
//                     Tab(
//                       text: 'ANALYSIS',
//                     ),
//                     Tab(
//                       text: 'DASHBOARD',
//                     ),
//                   ],
//                 ),
//               ),