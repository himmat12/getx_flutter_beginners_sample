import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Code Examples'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Get.offNamed('/counter');
                },
                child: Text('State Management'),
              ),
              TextButton(
                onPressed: () {
                  Get.offNamed('/page1');
                },
                child: Text('Routes Management'),
              ),
              TextButton(
                onPressed: () {
                  Get.offNamed('/example');
                },
                child: Text('Dependencies Management'),
              ),
              TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                  Get.toNamed('/utilites');
                },
                child: Text('Utilites'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
