import 'package:flutter/material.dart';
import 'package:islamy/controller/theming.dart';
import 'package:islamy/screens/hadeth_details.dart';
import 'package:islamy/screens/home.dart';
import 'package:islamy/screens/sura_details.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      theme: MyThemeData.customlightTheme,
    );
  }
}
