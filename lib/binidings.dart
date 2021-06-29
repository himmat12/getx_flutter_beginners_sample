import 'package:get/get.dart';

import 'src/controller/reactive_state_controller.dart';
import 'src/services/api_service.dart';

class DependencyBindings extends Bindings {
  DependencyBindings() {
    dependencies();
  }

  @override
  void dependencies() {
    final _counterState = Get.put(ReactiveStateController());

    final _apiService = Get.put(ApiService());
  }
}
