import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:islamy/controller/locale/change_lang.dart';

import 'package:islamy/controller/theming.dart';

class SettingsTap extends StatefulWidget {
  const SettingsTap({Key? key}) : super(key: key);

  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  ChangeLang controller = Get.find();
  bool isSwitched = true;
  static bool isDark = false;
  bool isEnglish = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("7".tr,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Get.isDarkMode
                              ? MyThemeData.secondColor
                              : MyThemeData.blackColor,
                        )),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Card(
              color: Get.isDarkMode
                  ? MyThemeData.primaryColordark
                  : MyThemeData.whiteColor,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      trailing: Icon(Icons.language_outlined,
                          color: Get.isDarkMode
                              ? MyThemeData.secondColor
                              : MyThemeData.primaryColor),
                      title: Text('11'.tr,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                  color: Get.isDarkMode
                                      ? MyThemeData.whiteColor
                                      : MyThemeData.blackColor,
                                  fontSize: 20)),
                      subtitle: Text("12".tr,
                          style: TextStyle(
                              color: Get.isDarkMode
                                  ? MyThemeData.whiteColor
                                  : MyThemeData.blackColor.withOpacity(0.5),
                              fontSize: 16)),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("13".tr,
                                style: TextStyle(
                                    color: Get.isDarkMode
                                        ? MyThemeData.whiteColor
                                        : MyThemeData.blackColor,
                                    fontSize: 20)),
                            Text("18".tr,
                                style: TextStyle(
                                    color: Get.isDarkMode
                                        ? MyThemeData.whiteColor
                                        : MyThemeData.blackColor
                                            .withOpacity(0.5),
                                    fontSize: 15)),
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.light_mode,
                            color: Get.isDarkMode
                                ? MyThemeData.secondColor
                                : MyThemeData.primaryColor)
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("14".tr,
                                style: TextStyle(
                                    color: Get.isDarkMode
                                        ? MyThemeData.whiteColor
                                        : MyThemeData.blackColor,
                                    fontSize: 20)),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(FontAwesomeIcons.exclamationCircle,
                                color: Get.isDarkMode
                                    ? MyThemeData.secondColor
                                    : MyThemeData.primaryColor),
                          ],
                        ),
                        Switch(
                          activeColor: Get.isDarkMode
                              ? MyThemeData.secondColor
                              : MyThemeData.primaryColor,
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("15".tr,
                            style: TextStyle(
                                color: Get.isDarkMode
                                    ? MyThemeData.whiteColor
                                    : MyThemeData.blackColor,
                                fontSize: 20)),
                        Switch(
                          activeColor: Get.isDarkMode
                              ? MyThemeData.secondColor
                              : MyThemeData.primaryColor,
                          value: isDark,
                          onChanged: (value) {
                            setState(() {
                              isDark = value;
                              if (isDark == true) {
                                Get.changeTheme(MyThemeData.customdarkTheme);
                              } else {
                                Get.changeTheme(MyThemeData.customlightTheme);
                              }
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("16".tr,
                                style: TextStyle(
                                    color: Get.isDarkMode
                                        ? MyThemeData.whiteColor
                                        : MyThemeData.blackColor,
                                    fontSize: 20)),
                            Text("17".tr,
                                style: TextStyle(
                                    color: Get.isDarkMode
                                        ? MyThemeData.whiteColor
                                        : MyThemeData.blackColor
                                            .withOpacity(0.5),
                                    fontSize: 16)),
                          ],
                        ),
                        Switch(
                          activeColor: Get.isDarkMode
                              ? MyThemeData.secondColor
                              : MyThemeData.primaryColor,
                          value: isEnglish,
                          onChanged: (value) {
                            setState(() {
                              isEnglish = value;
                            });
                            if (isEnglish == true) {
                              controller.changeLang("ar");
                            } else {
                              controller.changeLang("en");
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
