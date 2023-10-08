import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants/theme.dart';

class SettingsTap extends StatefulWidget {
  const SettingsTap({Key? key}) : super(key: key);

  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  bool isSwitched = true;
  bool isDark = false;
  bool isEnglish = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 24),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.black.withOpacity(0.7)),
            ),
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   ListTile(
                     leading: Icon(Icons.language_outlined),
                     title:  Text('Arabic Text',style: TextStyle(color: Colors.black,fontSize: 20)),
                     subtitle:Text("Default Language",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 16)),
                   ),
                    Divider(thickness: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Tajweed",style: TextStyle(color: Colors.black,fontSize: 20)),
              SizedBox(width: 8,),
              Icon(FontAwesomeIcons.exclamationCircle, color: MyThemeData.primaryColor,),
                          ],
                        ),
                        Switch(
                          activeColor: MyThemeData.primaryColor,
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(thickness: 2,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                            Text("Dark Mode",style: TextStyle(color: Colors.black,fontSize: 20)),
                        Switch(
                          activeColor: MyThemeData.primaryColor,
                          value: isDark,
                          onChanged: (value) {
                            setState(() {
                              isDark = value;
                            });
                          },
                        ),
                      ],
                    ),
                    Divider(thickness: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Translation",style: TextStyle(color: Colors.black,fontSize: 20)),
                            Text("Translate to english",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 16)),
                          ],
                        ),
                        Switch(
                          activeColor: MyThemeData.primaryColor,
                          value: isEnglish,
                          onChanged: (value) {
                            setState(() {
                              isEnglish = value;
                            });
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