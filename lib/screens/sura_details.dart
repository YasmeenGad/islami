// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:islamy/controller/theming.dart';

// import 'package:islamy/models/sura_model.dart';

// class SuraDetails extends StatefulWidget {
//   SuraDetails({super.key});

//   static const String routeName = "suraDetails";

//   @override
//   State<SuraDetails> createState() => _SuraDetailsState();
// }

// class _SuraDetailsState extends State<SuraDetails> {
//   List<String> verses = [];

//   @override
//   Widget build(BuildContext context) {
//     var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
//     if (verses.isEmpty) {
//       loadFile(args.index);
//     }
//     return Stack(
//       children: [
//         Get.isDarkMode
//             ? Image.asset(
//                 "assets/images/dark_bg.png",
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               )
//             : Image.asset(
//                 "assets/images/default_bg.png",
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//         Scaffold(
//             appBar: AppBar(
//                 title:
//                     Text("1".tr, style: Theme.of(context).textTheme.bodyLarge)),
//             body: Padding(
//               padding: const EdgeInsets.all(12),
//               child: Card(
//                 color: Get.isDarkMode
//                     ? MyThemeData.primaryColordark
//                     : MyThemeData.whiteColor,
//                 elevation: 8,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(25),
//                     side: BorderSide(
//                         color: Get.isDarkMode
//                             ? MyThemeData.secondColor
//                             : MyThemeData.primaryColor)),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 12,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "${args.name}",
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodyLarge!
//                               .copyWith(
//                                   color: Get.isDarkMode
//                                       ? MyThemeData.secondColor
//                                       : MyThemeData.blackColor),
//                         ),
//                         SizedBox(
//                           width: 24,
//                         ),
//                         ImageIcon(
//                             AssetImage(
//                               "assets/images/play-circle.png",
//                             ),
//                             color: Get.isDarkMode
//                                 ? MyThemeData.secondColor
//                                 : MyThemeData.primaryColor,
//                             size: 27)
//                       ],
//                     ),
//                     Divider(
//                       thickness: 2,
//                       color: Get.isDarkMode
//                           ? MyThemeData.secondColor
//                           : MyThemeData.primaryColor,
//                       indent: 40,
//                       endIndent: 40,
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: ListView.builder(
//                           itemBuilder: (context, index) {
//                             return Directionality(
//                               textDirection: TextDirection.rtl,
//                               child: RichText(
//                                 textAlign: TextAlign.center,
//                                 text: TextSpan(
//                                   text: '${verses[index]}{${index + 1}}',
//                                   style: GoogleFonts.amiriQuran(
//                                     color: Get.isDarkMode
//                                         ? MyThemeData.secondColor
//                                         : MyThemeData.blackColor,
//                                     fontSize: 20,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           },
//                           itemCount: verses.length,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             )),
//       ],
//     );
//   }

//   void loadFile(int index) async {
//     String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
//     List<String> lines = file.split("\n");
//     verses = lines;
//     setState(() {});
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/controller/theming.dart';

import 'package:islamy/models/sura_model.dart';

class SuraDetails extends StatefulWidget {
  SuraDetails({super.key});

  static const String routeName = "suraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];
  bool isLoading = true; // تعيين القيمة الافتراضية للتحميل

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Get.isDarkMode
            ? Image.asset(
                "assets/images/dark_bg.png",
                width: double.infinity,
                fit: BoxFit.cover,
              )
            : Image.asset(
                "assets/images/default_bg.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
        Scaffold(
            appBar: AppBar(
                title:
                    Text("1".tr, style: Theme.of(context).textTheme.bodyLarge)),
            body: Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                color: Get.isDarkMode
                    ? MyThemeData.primaryColordark
                    : MyThemeData.whiteColor,
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(
                        color: Get.isDarkMode
                            ? MyThemeData.secondColor
                            : MyThemeData.primaryColor)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${args.name}",
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Get.isDarkMode
                                      ? MyThemeData.secondColor
                                      : MyThemeData.blackColor),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        ImageIcon(
                            AssetImage(
                              "assets/images/play-circle.png",
                            ),
                            color: Get.isDarkMode
                                ? MyThemeData.secondColor
                                : MyThemeData.primaryColor,
                            size: 27)
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: Get.isDarkMode
                          ? MyThemeData.secondColor
                          : MyThemeData.primaryColor,
                      indent: 40,
                      endIndent: 40,
                    ),
                    Expanded(
                      child: isLoading // إذا كان التحميل قيد التنفيذ
                          ? Center(
                              child: CircularProgressIndicator(
                                  color: Get.isDarkMode
                                      ? MyThemeData.secondColor
                                      : MyThemeData
                                          .primaryColor), // عرض مؤشر التقدم الدائري
                            )
                          : Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView.builder(
                                itemBuilder: (context, index) {
                                  return Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                        text: '${verses[index]}(${index + 1})',
                                        style: GoogleFonts.amiriQuran(
                                          color: Get.isDarkMode
                                              ? MyThemeData.secondColor
                                              : MyThemeData.blackColor,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: verses.length,
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }

  void loadFile(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = file.split("\n");
    verses = lines;
    setState(() {
      isLoading = false; // انتهاء التحميل
    });
  }
}
