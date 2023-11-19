import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamy/controller/theming.dart';
import 'package:islamy/screens/taps/ahadeth_tap.dart';
import 'package:islamy/screens/taps/quran_tap.dart';
import 'package:islamy/screens/taps/radio_tap.dart';
import 'package:islamy/screens/taps/sebha_tab.dart';
import 'package:islamy/screens/taps/settings_tap.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routeName = "/";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  double imageSize = 36;
  List<Widget> taps = [
    QuranTap(),
    SebhaTap(),
    RadioTap(),
    AhadethTap(),
    SettingsTap(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Get.isDarkMode
            ? Image.asset("assets/images/dark_bg.png")
            : Image.asset("assets/images/default_bg.png"),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "1".tr,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Get.isDarkMode
                      ? MyThemeData.whiteColor
                      : MyThemeData.blackColor),
            ),
          ),
          body: taps[index],
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_quran.png"),
                      size: imageSize,
                    ),
                    label: "3".tr,
                    backgroundColor: Get.isDarkMode
                        ? MyThemeData.primaryColordark
                        : MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_sebha.png"),
                      size: imageSize,
                    ),
                    label: "4".tr,
                    backgroundColor: Get.isDarkMode
                        ? MyThemeData.primaryColordark
                        : MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_radio.png"),
                      size: imageSize,
                    ),
                    label: "5".tr,
                    backgroundColor: Get.isDarkMode
                        ? MyThemeData.primaryColordark
                        : MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_hadeth.png"),
                      size: imageSize,
                    ),
                    label: "6".tr,
                    backgroundColor: Get.isDarkMode
                        ? MyThemeData.primaryColordark
                        : MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "7".tr,
                    backgroundColor: Get.isDarkMode
                        ? MyThemeData.primaryColordark
                        : MyThemeData.primaryColor),
              ]),
        ),
      ],
    );
  }
}
