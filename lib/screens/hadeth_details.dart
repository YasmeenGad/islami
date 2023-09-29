import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/models/hadeth_model.dart';

import '../constants/theme.dart';

class HadethDetails extends StatelessWidget {
  const HadethDetails({Key? key}) : super(key: key);
  static const String routeName = "hadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/default_bg.png",
            fit: BoxFit.cover,
          ),
          Scaffold(
            appBar: AppBar(
                title: Text("islami",
                    style: Theme.of(context).textTheme.bodyLarge)),
            body: Padding(
              padding: const EdgeInsets.all(14),
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: MyThemeData.primaryColor)),
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
                                .copyWith(color: MyThemeData.blackColor),
                          ),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 2,
                      color: MyThemeData.primaryColor,
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
                                  color: MyThemeData.blackColor),
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
