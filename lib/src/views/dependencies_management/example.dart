import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/src/controller/reactive_state_controller.dart';
import 'package:getx_state_management/src/services/api_service.dart';

class ExamplePage extends StatefulWidget {
  ExamplePage({Key? key}) : super(key: key);

  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final _counterState = Get.find<ReactiveStateController>();

  final _apiService = Get.find<ApiService>();

  bool isFetched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exapmle'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// fetches api service data
            TextButton(
              onPressed: () {
                _apiService.getApiData();
                setState(() {
                  isFetched = true;
                });
              },
              child: Text('Fetch API Data'),
            ),

            /// shows retrived data from service
            isFetched != true
                ? const SizedBox.shrink()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Person',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('name: ${_apiService.person!.name}'),
                      Text('age: ${_apiService.person!.age}'),
                      Text('gender: ${_apiService.person!.gender}'),
                      Text('address: ${_apiService.person!.address}'),
                    ],
                  ),
            const SizedBox(height: 28),

            /// counter widget
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    _counterState.decrement();
                  },
                  icon: Icon(Icons.remove),
                ),
                Obx(
                  () => Text(
                    '${_counterState.count}',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    _counterState.increment();
                  },
                  icon: Icon(Icons.add),
                ),
                IconButton(
                  onPressed: () {
                    _counterState.reset();
                  },
                  icon: Icon(Icons.refresh),
                ),
              ],
            ),

            /// navigation btn
            TextButton(
              onPressed: () {
                Get.toNamed('/example01');
              },
              child: Text('Next page'),
            ),
          ],
        ),
      ),
    );
  }
}
