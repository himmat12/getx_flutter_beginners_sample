import 'package:flutter/material.dart';

import 'package:getx_state_management/src/views/route_management/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page1(pageNO: '1'),
    );
  }
}
