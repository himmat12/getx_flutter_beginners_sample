import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/routes.dart';
import 'package:getx_state_management/src/views/dependencies_management/example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      getPages: Routes.getRoutes(),
      debugShowCheckedModeBanner: false,
      home: ExamplePage(),
    );
  }
}
