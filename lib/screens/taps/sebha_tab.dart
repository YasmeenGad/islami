import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/constants/theme.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  double finalAngle = 0.0;
  int counter = 0;
  String txt = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      "assets/images/head_sebha_dark.png",
                      width: 73,
                      height: 105,
                      color: MyThemeData.primaryColor,
                    )),
                GestureDetector(
                  onPanUpdate: (value) {
                    setState(() {
                      finalAngle = value.delta.distance * -pi / 180;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: Transform.rotate(
                          angle: finalAngle,
                          origin: Offset(0, 0),
                          child: Image.asset(
                              "assets/images/body_sebha_dark.png",
                              width: 232,
                              height: 234,
                              color: MyThemeData.primaryColor),
                        )),
                  ),
                )
              ],
            ),
            SizedBox(),
            Text(
              "عدد التسبيحات",
              style:
                  Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 25),
            ),
            Container(
              width: 69,
              height: 81,
              child: Center(
                  child: Text("${counter}",
                      style: GoogleFonts.inter(
                        textStyle: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 25),
                      ))),
              decoration: BoxDecoration(
                  color: Color(0xFFCBAE82),
                  borderRadius: BorderRadius.circular(25)),
            ),
            Container(
              width: 137,
              height: 51,
              decoration: BoxDecoration(
                  color: MyThemeData.primaryColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                "${txt}",
                style: GoogleFonts.inter(
                    textStyle: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Color(0xFFFFFFFF), fontSize: 25)),
              )),
            )
          ],
        );
      },
    );
  }
}
