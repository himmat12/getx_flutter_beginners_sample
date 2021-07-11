import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/binidings.dart';
import 'package:getx_state_management/home.dart';
import 'package:getx_state_management/routes.dart';
import 'package:getx_state_management/src/models/translations_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      translations: Greetings(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      initialBinding: DependencyBindings(),
      getPages: Routes.getRoutes(),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
