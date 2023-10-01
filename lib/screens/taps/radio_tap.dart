import 'package:flutter/material.dart';

import '../../constants/theme.dart';

class RadioTap extends StatelessWidget {
  RadioTap({super.key});

  String txt = "إذاعة القرآن الكريم";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Image.asset("assets/images/radio_image.png"),
            SizedBox(
              height: 32,
            ),
            Text("${txt}",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: MyThemeData.blackColor)),
            SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    flex: 2,
                    child: ImageIcon(
                      AssetImage(
                        "assets/images/next.png",
                      ),
                      color: MyThemeData.primaryColor,
                    )),
                Expanded(
                    flex: 1,
                    child: ImageIcon(
                      AssetImage("assets/images/play.png"),
                      color: MyThemeData.primaryColor,
                      size: 36,
                    )),
                Expanded(
                    flex: 2,
                    child: ImageIcon(
                      AssetImage("assets/images/before.png"),
                      color: MyThemeData.primaryColor,
                    )),
              ],
            )
          ],
        ),
      ],
    ));
  }
}
/* Expanded(flex:5,child: Image.asset("assets/images/radio_image.png")),
        Expanded(flex:2,child: Text("${txt}",style:Theme.of(context).textTheme.bodyMedium!.copyWith(color:MyThemeData.blackColor))),
       Expanded(flex:1,child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           Expanded(flex:7,child: ImageIcon(AssetImage("assets/images/next.png"))),
           Expanded(flex:1,child: ImageIcon(AssetImage("assets/images/play.png"))),
           Expanded(flex:7,child: ImageIcon(AssetImage("assets/images/before.png"))),



         ],
       ))

*/