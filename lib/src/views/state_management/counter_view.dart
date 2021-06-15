import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/src/controller/reactive_state_controller.dart';
import 'package:getx_state_management/src/controller/simple_state_controller.dart';

class CounterView extends StatelessWidget {
  CounterView({Key? key}) : super(key: key);

  //simple state Controller  dependency
  final _simpleStateController = Get.put(SimpleStateController());

  //reactive state Controller  dependency
  final _reactiveStateController = Get.put(ReactiveStateController());

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
            ///
            ///
            /// simple state manager
            GetBuilder(
              id: 'count',
              init: _simpleStateController,
              initState: (_) {
                // ignore: avoid_print
                print("simple state manager intializing ...");
              },
              builder: (controller) => Text(
                'Count = ${_simpleStateController.count}',
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),

            ///
            ///
            /// reactive state manager
            GetX(
              init: _reactiveStateController,
              initState: (_) {
                // ignore: avoid_print
                print("reactive state manager intializing ...");
              },
              builder: (controller) => Text(
                'Count = ${_reactiveStateController.count}',
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
            Obx(
              () => Text(
                'Count = ${_reactiveStateController.count}',
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
              ),
            ),
            TextButton(
              onPressed: () {
                // reactive state manager method
                _reactiveStateController.increment();

                // simple state manager method
                _simpleStateController.increment();
              },
              child: const Text('Increment'),
            ),
            TextButton(
              onPressed: () {
                // reactive state manager method
                _reactiveStateController.decrement();

                // simple state manager method
                _simpleStateController.decrement();
              },
              child: const Text('Decrement'),
            ),
            TextButton(
              onPressed: () {
                // reactive state manager method
                _reactiveStateController.reset();

                // simple state manager method
                _simpleStateController.reset();
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
