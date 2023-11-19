import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/controller/theming.dart';
import 'package:islamy/models/hadeth_model.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({Key? key}) : super(key: key);
  static const String routeName = "hadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Scaffold(
      body: Stack(
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
              padding: const EdgeInsets.all(14),
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "${args.title}",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: Get.isDarkMode
                                        ? MyThemeData.secondColor
                                        : MyThemeData.blackColor),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
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
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return Text(
                              "${args.content[index]}",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.amiriQuran(
                                  color: Get.isDarkMode
                                      ? MyThemeData.secondColor
                                      : MyThemeData.blackColor,
                                  fontSize: 20),
                            );
                          },
                          itemCount: args.content.length,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
