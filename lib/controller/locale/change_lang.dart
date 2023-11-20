import 'dart:ui';

import 'package:get/get.dart';

import '../../main.dart';

class ChangeLang extends GetxController {
  Locale initial = prefs!.getString("lang") == null
      ? Get.deviceLocale!
      : Locale(prefs.getString("lang")!);

  void changeLang(String lang) {
    Locale locale = Locale(lang);
    prefs!.setString("lang", locale.toString());
    Get.updateLocale(locale);
  }
}
