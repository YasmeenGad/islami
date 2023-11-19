import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:islamy/models/radio_model.dart';

class ApiManager {
  static Future<RadioModel> getApiData() async {
    var url = Uri.parse("https://mp3quran.net/api/v3/radios?language=ar");
    http.Response response = await http.get(url);
    var json = jsonDecode(response.body);
    RadioModel radioModel = RadioModel.fromJson(json);
    return radioModel;
  }
}
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:islamy/api_manager/api_manager.dart';
// import 'package:islamy/controller/theming.dart';
// import 'package:islamy/models/radio_model.dart';
//
// class RadioTap extends StatelessWidget {
//   RadioTap({super.key});
//
//   String txt = "10".tr;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Column(
//               children: [
//                 Image.asset("assets/images/radio_image.png"),
//                 SizedBox(
//                   height: 32,
//                 ),
//                 Expanded(
//                   child: FutureBuilder(future: ApiManager.getApiData(), builder: (BuildContext context,AsyncSnapshot<RadioModel> snapshot) {
//                     if(snapshot.hasError){
//                       return Center(child: Text("There is an error , try again later"),);
//                     }
//                     else if(snapshot.connectionState==ConnectionState.waiting){
//                       return Center(child: CircularProgressIndicator(),);
//                     }
//                     RadioModel radioModel=snapshot.data!;
//                     List<RadioData> radioData=radioModel.radios!;
//                     return Expanded(
//                       child: ListView.builder(
//                         itemCount: radioData.length,
//                         itemBuilder: (context, index) {
//                           return Column(children: [
//                             Text("${radioData[index].name!}",
//                                 style: Theme.of(context).textTheme.bodyMedium!.copyWith(
//                                     color: Get.isDarkMode
//                                         ? MyThemeData.whiteColor
//                                         : MyThemeData.blackColor)),
//                             SizedBox(
//                               height: 64,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceAround,
//                               children: [
//                                 Expanded(
//                                     flex: 2,
//                                     child: ImageIcon(
//                                         AssetImage(
//                                           "assets/images/next.png",
//                                         ),
//                                         color: Get.isDarkMode
//                                             ? MyThemeData.secondColor
//                                             : MyThemeData.primaryColor)),
//                                 Expanded(
//                                     flex: 1,
//                                     child: ImageIcon(
//                                       AssetImage("assets/images/play.png"),
//                                       color: Get.isDarkMode
//                                           ? MyThemeData.secondColor
//                                           : MyThemeData.primaryColor,
//                                       size: 36,
//                                     )),
//                                 Expanded(
//                                     flex: 2,
//                                     child: ImageIcon(AssetImage("assets/images/before.png"),
//                                         color: Get.isDarkMode
//                                             ? MyThemeData.secondColor
//                                             : MyThemeData.primaryColor)),
//                               ],
//                             )
//                           ],);
//                         },
//                       ),
//                     );
//                   },),
//                 )
//               ],
//             ),
//           ],
//         ));
//   }
// }
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
