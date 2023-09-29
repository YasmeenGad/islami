import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/constants/theme.dart';
import 'package:islamy/models/sura_model.dart';

class SuraDetails extends StatefulWidget {
  SuraDetails({super.key});

  static const String routeName = "suraDetails";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
        Image.asset("assets/images/default_bg.png",
            width: double.infinity, fit: BoxFit.cover),
        Scaffold(
            appBar: AppBar(
                title: Text("islami",
                    style: Theme.of(context).textTheme.bodyLarge)),
            body: Padding(
              padding: const EdgeInsets.all(12),
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
                        Text(
                          "${args.name}",
                          style: Theme.of(context).textTheme.bodyLarge,
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
                            return Directionality(
                              textDirection: TextDirection.rtl,
                              child: Text(
                                "${verses[index]}(${index + 1})",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiriQuran(
                                    color: MyThemeData.blackColor),
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
    setState(() {});
  }
}
