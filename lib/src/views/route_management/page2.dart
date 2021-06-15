import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/src/views/route_management/page3.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key, required this.pageNO}) : super(key: key);

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
                        builder: (context) => const Page3(pageNO: '3')));
              },
              child: const Text('Navigate to Page 3'),
            ),
          ],
        ),
      ),
    );
  }
}
