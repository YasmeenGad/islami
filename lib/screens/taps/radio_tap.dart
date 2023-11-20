import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:islamy/api_manager/api_manager.dart';
import 'package:islamy/controller/theming.dart';
import 'package:islamy/models/radio_model.dart';

class RadioTap extends StatefulWidget {
  RadioTap({super.key});

  @override
  State<RadioTap> createState() => _RadioTapState();
}

class _RadioTapState extends State<RadioTap> {
  String txt = "10".tr;

  int i = 0;
  bool isRadioOn = false;

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_image.png"),
        SizedBox(
          height: 32,
        ),
        Expanded(
          child: FutureBuilder(
            future: ApiManager.getApiData(),
            builder:
                (BuildContext context, AsyncSnapshot<RadioModel> snapshot) {
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    "There is an error , try again later",
                    style: TextStyle(
                        fontSize: 22,
                        color: Get.isDarkMode
                            ? MyThemeData.secondColor
                            : MyThemeData.primaryColor),
                  ),
                );
              } else if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                      color: Get.isDarkMode
                          ? MyThemeData.secondColor
                          : MyThemeData.primaryColor),
                );
              }
              RadioModel radioModel = snapshot.data!;
              List<RadioData> radioData = radioModel.radios!;

              return Column(
                children: [
                  Text("${radioData[i].name!}",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Get.isDarkMode
                              ? MyThemeData.whiteColor
                              : MyThemeData.blackColor)),
                  SizedBox(
                    height: 64,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              if (i != 0) {
                                i--;
                                setState(() {});
                              }
                            },
                            child: ImageIcon(
                                AssetImage(
                                  "assets/images/next.png",
                                ),
                                color: Get.isDarkMode
                                    ? MyThemeData.secondColor
                                    : MyThemeData.primaryColor),
                          )),
                      Expanded(
                          flex: 1,
                          child: InkWell(
                              onTap: () async {
                                setState(() {
                                  isRadioOn = !isRadioOn;
                                });
                                isRadioOn
                                    ? await player
                                        .play(UrlSource(radioData[i].url!))
                                    : await player.pause();
                              },
                              child: isRadioOn
                                  ? Icon(
                                      Icons.pause,
                                      color: Get.isDarkMode
                                          ? MyThemeData.secondColor
                                          : MyThemeData.primaryColor,
                                      size: 30,
                                    )
                                  : Icon(
                                      Icons.play_arrow,
                                      color: Get.isDarkMode
                                          ? MyThemeData.secondColor
                                          : MyThemeData.primaryColor,
                                      size: 30,
                                    ))),
                      Expanded(
                          flex: 2,
                          child: InkWell(
                            onTap: () {
                              i++;
                              setState(() {});
                            },
                            child: ImageIcon(
                                AssetImage("assets/images/before.png"),
                                color: Get.isDarkMode
                                    ? MyThemeData.secondColor
                                    : MyThemeData.primaryColor),
                          )),
                    ],
                  )
                ],
              );
            },
          ),
        )
      ],
    ));
  }
}
