import 'package:flutter/material.dart';
import 'package:islamy/constants/theme.dart';
import 'package:islamy/models/sura_model.dart';
import 'package:islamy/screens/sura_details.dart';

class QuranTap extends StatelessWidget {
  QuranTap({super.key});

  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/qur2an_screen_logo.png"),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 2,
          ),
          Text(
            "Sura Name",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: MyThemeData.blackColor),
          ),
          Divider(
            color: MyThemeData.primaryColor,
            thickness: 2,
          ),
          Expanded(
              child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1,
                color: MyThemeData.primaryColor,
                endIndent: 40,
                indent: 40,
              );
            },
            itemBuilder: (context, index) {
              return Center(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SuraDetails.routeName,
                        arguments: SuraModel(index, suraName[index]));
                  },
                  child: Text(
                    "${suraName[index]}",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              );
            },
            itemCount: suraName.length,
          ))
        ],
      ),
    );
  }
}
