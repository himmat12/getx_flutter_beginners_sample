import 'package:get/get.dart';

class Greetings extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "np_NP": {
          "Hello": "नमस्कार",
          "greetings":
              "नमस्कार @name तपाईलाई कस्तो छ? तपाईंको बहिनी @sister_name कस्तो गर्दैछ?!"
        },
        "en_US": {
          "Hello": "Hello",
          "greetings":
              "Hello @name how are you?  How's your sister @sister_name doing ?!"
        },
        "cn_CN": {
          "Hello": "你好",
          "greetings": "你好@name 你好吗？你妹妹@sister_name 好吗？！"
        },
        "pr_PR": {
          "Hello": "Olá",
          "greetings": "Ola @name tudo bem? Como está sua irmã @sister_name?!"
        },
        "jp_JP": {
          "Hello": "こんにちは",
          "greetings": "こんにちは@nameお元気ですか？ お姉さん@sister_nameの調子はどう？"
        },
        "kr_KR": {
          "Hello": "안녕하세요",
          "greetings": "@name님 안녕하십니까? @sister_name 여동생은 어때?!"
        }
      };
}
