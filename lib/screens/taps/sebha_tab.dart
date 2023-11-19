import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/controller/theming.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  double finalAngle = 0.0;
  int counter = 0;
  int index = 0;
  List<String> str = ["سبحان الله", "الحمد لله", "الله اكبر"];

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
                    child: Image.asset("assets/images/head_sebha_dark.png",
                        width: 73,
                        height: 105,
                        color: Get.isDarkMode
                            ? MyThemeData.secondColor
                            : MyThemeData.primaryColor)),
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
                          child: InkWell(
                            onTap: () {
                              if (counter == 33) {
                                counter = 0;
                                if (index == 2) {
                                  index = 0;
                                } else {
                                  index++;
                                }
                              } else {
                                counter++;
                              }
                            },
                            child: Image.asset(
                                "assets/images/body_sebha_dark.png",
                                width: 232,
                                height: 234,
                                color: Get.isDarkMode
                                    ? MyThemeData.secondColor
                                    : MyThemeData.primaryColor),
                          ),
                        )),
                  ),
                )
              ],
            ),
            SizedBox(),
            Text(
              "9".tr,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 25,
                  color: Get.isDarkMode
                      ? MyThemeData.whiteColor
                      : MyThemeData.blackColor),
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
                            .copyWith(
                                fontSize: 25,
                                color: Get.isDarkMode
                                    ? MyThemeData.whiteColor
                                    : MyThemeData.blackColor),
                      ))),
              decoration: BoxDecoration(
                  color: Get.isDarkMode
                      ? MyThemeData.primaryColordark
                      : Color(0xFFCBAE82),
                  borderRadius: BorderRadius.circular(25)),
            ),
            Container(
              width: 137,
              height: 51,
              decoration: BoxDecoration(
                  color: Get.isDarkMode
                      ? MyThemeData.secondColor
                      : MyThemeData.primaryColor,
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                  child: Text(
                    "${str[index]}",
                style: GoogleFonts.inter(
                    textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Get.isDarkMode
                            ? MyThemeData.blackColor
                            : Color(0xFFFFFFFF),
                        fontSize: 25)),
              )),
            )
          ],
        );
      },
    );
  }
}
