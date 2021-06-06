import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/src/controller/reactive_state_controller.dart';
import 'package:getx_state_management/src/controller/simple_state_controller.dart';

class CounterView extends StatelessWidget {
  CounterView({Key? key}) : super(key: key);

  final _controller = Get.put(ReactiveStateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX(
              init: _controller,
              initState: (_) {
                // ignore: avoid_print
                print("intializing ...");
              },
              builder: (controller) => Text(
                'Count = ${_controller.count}',
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
            TextButton(
              onPressed: () {
                _controller.increment();
              },
              child: const Text('Increment'),
            ),
            TextButton(
              onPressed: () {
                _controller.decrement();
              },
              child: const Text('Decrement'),
            ),
            TextButton(
              onPressed: () {
                _controller.reset();
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
