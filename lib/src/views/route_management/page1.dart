import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/src/views/route_management/page2.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key, required this.pageNO}) : super(key: key);

  final String? pageNO;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page $pageNO Title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Page $pageNO',
              style: const TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Page2(pageNO: '2')));
              },
              child: const Text('Navigate to Page 2'),
            ),
          ],
        ),
      ),
    );
  }
}
