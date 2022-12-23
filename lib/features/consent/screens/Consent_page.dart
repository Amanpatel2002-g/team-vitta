// ignore: file_names
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vitta/Global_widgets_and_files/custom_widgets.dart';
import 'package:vitta/features/consent/screens/Consent_by_vitta_screen.dart';
import 'package:vitta/features/consent/widgets/consent_home_page_widget.dart';

// 2 types of consent
// 1. consent for the vitta
// 2. consent for FIU
class ConsentPage extends StatelessWidget {

  const ConsentPage({super.key});
  void goToconsentForVittaScreen(BuildContext context){
    Navigator.pushNamed(context, ConsentForVitta.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customeAppBar(text: "consent page"),
      body: SingleChildScrollView(
        child: Column(
          children: [
             InkWell(
              splashColor: Colors.blueGrey,
              onTap: () => goToconsentForVittaScreen(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: ConsentHomePageWidget(
                  cardTitle: "Consent given to Vitta",
                  cardSubtitle: "Consent given today",
                  leadingWidget: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: FaIcon(FontAwesomeIcons.check, color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ConsentHomePageWidget(
                cardTitle: "Requested consents",
                cardSubtitle: "requested today",
                leadingWidget: CircleAvatar(
                  // ignore: use_full_hex_values_for_flutter_colors
                  backgroundColor: const Color(0xffbead37e),
                  child: Image.asset(
                    'assets/images/consent.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ConsentHomePageWidget(
                cardTitle: "Active Consents",
                cardSubtitle: "last consent given today",
                leadingWidget: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: FaIcon(FontAwesomeIcons.check, color: Colors.white),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: ConsentHomePageWidget(
                cardTitle: "Inactive consents",
                cardSubtitle: "last consent given today",
                leadingWidget: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: FaIcon(
                    Icons.block,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
