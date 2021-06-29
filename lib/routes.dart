import 'package:get/get.dart';
import 'package:getx_state_management/src/views/dependencies_management/example.dart';
import 'package:getx_state_management/src/views/dependencies_management/example01.dart';
import 'package:getx_state_management/src/views/route_management/page1.dart';
import 'package:getx_state_management/src/views/state_management/counter_view.dart';

import 'src/views/route_management/page2.dart';
import 'src/views/route_management/page3.dart';

class Routes {
  static List<GetPage> getRoutes() => <GetPage>[
        GetPage(name: '/counter', page: () => CounterView()),
        GetPage(name: '/page1', page: () => Page1(pageNO: Get.arguments)),
        GetPage(name: '/page2', page: () => Page2(pageNO: Get.arguments)),
        GetPage(name: '/page3', page: () => Page3(pageNO: Get.arguments)),
        GetPage(name: '/example01', page: () => ExamplePage01()),
        GetPage(name: '/example', page: () => ExamplePage()),
      ];
}
