import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/src/views/counter_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterView(),
    );
  }
}
