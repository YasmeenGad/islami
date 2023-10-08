import 'package:flutter/material.dart';
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
        Image.asset("assets/images/default_bg.png"),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "islami",
              style: Theme.of(context).textTheme.bodyLarge,
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
                    label: "Quran",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_sebha.png"),
                      size: imageSize,
                    ),
                    label: "Sebha",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_radio.png"),
                      size: imageSize,
                    ),
                    label: "Radio",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/icon_hadeth.png"),
                      size: imageSize,
                    ),
                    label: "Ahadeth",
                    backgroundColor: MyThemeData.primaryColor),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings),
                    label: "Settings",
                    backgroundColor: MyThemeData.primaryColor),
              ]),
        ),
      ],
    );
  }
}
