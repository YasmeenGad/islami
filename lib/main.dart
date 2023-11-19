import 'package:flutter/material.dart';
import 'package:islamy/controller/locale/change_lang.dart';
import 'package:islamy/controller/theming.dart';
import 'package:islamy/screens/hadeth_details.dart';
import 'package:islamy/screens/home.dart';
import 'package:islamy/screens/sura_details.dart';
import 'package:get/get.dart';
import 'package:islamy/controller/locale/locale.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences prefs;

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ChangeLang controller = Get.put(ChangeLang(), permanent: true);
    return GetMaterialApp(
      translations: Locale(),
      locale: controller.initial,
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
