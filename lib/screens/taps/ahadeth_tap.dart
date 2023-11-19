import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:islamy/controller/theming.dart';
import 'package:islamy/models/hadeth_model.dart';
import 'package:islamy/screens/hadeth_details.dart';

class AhadethTap extends StatefulWidget {
  AhadethTap({super.key});

  @override
  State<AhadethTap> createState() => _AhadethTapState();
}

class _AhadethTapState extends State<AhadethTap> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();

    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/hadeth_logo.png"),
          Divider(
            color: Get.isDarkMode
                ? MyThemeData.secondColor
                : MyThemeData.primaryColor,
            thickness: 2,
          ),
          Text(
            "6".tr,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Get.isDarkMode
                    ? MyThemeData.whiteColor
                    : MyThemeData.blackColor),
          ),
          Divider(
            color: Get.isDarkMode
                ? MyThemeData.secondColor
                : MyThemeData.primaryColor,
            thickness: 2,
          ),
          Expanded(
              child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 1,
                      color: Get.isDarkMode
                          ? MyThemeData.secondColor
                          : MyThemeData.primaryColor,
                      endIndent: 40,
                      indent: 40,
                    );
                  },
                  itemCount: allAhadeth.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(HadethDetails.routeName,
                            arguments: allAhadeth[index]);
                      },
                      child: Text(
                        "${allAhadeth[index].title}",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Get.isDarkMode
                                ? MyThemeData.whiteColor
                                : MyThemeData.blackColor),
                      ),
                    );
                  }))
        ],
      ),
    );
  }

  void loadHadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#");
      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLines = hadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> content = hadethOneLines;
        HadethModel hadethModel = HadethModel(content: content, title: title);
        allAhadeth.add(hadethModel);
        setState(() {});
      }
    }).catchError((e) {
      print(e.toString());
    });
  }
}
