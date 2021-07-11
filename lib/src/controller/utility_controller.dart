import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UtilityController extends GetxController {
  var currentTranslation = translations[0]['value'].obs;

  void setTranslation({required String value}) {
    currentTranslation.value = value;
    switch (value) {
      case 'np_NP':
        Get.updateLocale(Locale('np', 'NP'));
        break;
      case 'cn_CN':
        Get.updateLocale(Locale('cn', 'CN'));
        break;
      case 'kr_KR':
        Get.updateLocale(Locale('kr', 'KR'));
        break;
      case 'jp_JP':
        Get.updateLocale(Locale('jp', 'JP'));
        break;
      case 'pr_PR':
        Get.updateLocale(Locale('pr', 'PR'));
        break;
      case 'en_US':
        Get.updateLocale(Locale('en', 'US'));
        break;
      default:
        break;
    }
  }
}

final List<Map<String, String>> translations = [
  {'title': 'English', 'value': 'en_US'},
  {'title': 'Nepali', 'value': 'np_NP'},
  {'title': 'Chinese', 'value': 'cn_CN'},
  {'title': 'Portguese', 'value': 'pr_PR'},
  {'title': 'Korean', 'value': 'kr_KR'},
  {'title': 'Japanese', 'value': 'jp_JP'},
];
