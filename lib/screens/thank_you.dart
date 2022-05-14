import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({Key? key}) : super(key: key);
  static const routeName = "/thank-you";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sailing...'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: LiquidLinearProgressIndicator(
        value: 0.33, // Defaults to 0.5.
        valueColor: AlwaysStoppedAnimation(
            Colors.blue), // Defaults to the current Theme's accentColor.
        backgroundColor:
            Colors.white, // Defaults to the current Theme's backgroundColor.
        borderColor: Colors.white,
        borderWidth: 5.0,
        borderRadius: 2.0,
        direction: Axis
            .vertical, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
        center: Image.asset("assets/clipart511100.png"),
      ),
    );
  }
}
