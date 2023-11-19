import 'package:get/get_navigation/src/root/internacionalization.dart';

class Locale implements Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys {
    return {
      "ar": {
        "1": "إسلامي",
        "2": "اسم السوره",
        "3": "القرآن",
        "4": "السبحة",
        "5": "الراديو",
        "6": "الأحاديث",
        "7": "الاعدادات",
        "8": "سبحان الله",
        "9": "عدد التسبيحات",
        "10": "إذاعة القرآن الكريم",
        "11": "اللغه الانجليزيه",
        "12": "اللغه الأفتراضيه",
        "13": "الوضع الفاتح",
        "14": "تجويد",
        "15": "الوضع المظلم",
        "16": "ترجمه",
        "17": "الترجمه للغه العربيه",
        "18": " الوضع الافتراضي",
      },
      "en": {
        "1": "Islami",
        "2": "Sura Name",
        "3": "Quran",
        "4": "Sebha",
        "5": "Radio",
        "6": "Hadiths",
        "7": "Settings",
        "8": "سبحان الله",
        "9": "Number of praises",
        "10": "quran kareem radio",
        "11": "English",
        "12": "default language",
        "13": "Light Mode",
        "14": "Tajweed",
        "15": "Dark Mode",
        "16": "Translation",
        "17": "translate to arabic",
        "18": "default mode",
      }
    };
  }
}
