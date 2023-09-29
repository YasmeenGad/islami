import 'package:flutter/material.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({Key? key}) : super(key: key);
  static const String routeName = "hadethDetails";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/default_bg.png",
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
