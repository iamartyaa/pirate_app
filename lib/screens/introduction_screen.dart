import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:pirate_app/screens/home_screen.dart';

class IntroductionScreen extends StatefulWidget {
  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  List<Slide> slidesList = [];

  @override
  void initState() {
    super.initState();

    slidesList.add(
      Slide(
        title: "Ahoy! Pirate",
        pathImage: 'assets/pirate.png',
        description:
            "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        backgroundColor: const Color(0xfff5a623),
      ),
    );
    slidesList.add(
      Slide(
        title: "Weapon",
        pathImage: 'assets/weapons.png',
        description:
            "Ye indulgence unreserved connection alteration appearance",
        backgroundColor: const Color(0xff203152),
      ),
    );
    slidesList.add(
      Slide(
        title: "Bon Voyage",
        pathImage: 'assets/sailing.gif',
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        backgroundColor: const Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slidesList,
      onDonePress: onDonePress,
    );
  }
}
