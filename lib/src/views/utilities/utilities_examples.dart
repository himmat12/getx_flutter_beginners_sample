import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/src/controller/utility_controller.dart';

class UtilitiesExample extends StatefulWidget {
  UtilitiesExample({Key? key}) : super(key: key);

  @override
  _UtilitiesExampleState createState() => _UtilitiesExampleState();
}

class _UtilitiesExampleState extends State<UtilitiesExample> {
  final _utilityController = Get.put(UtilityController(), permanent: true);

  var products = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Utilities'),
        actions: [
          Obx(
            () => IconButton(
              onPressed: () {
                _utilityController.toggleTheme();
              },
              icon: Icon(Get.isDarkMode == true
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined),

              // icon: Icon(_utilityController.isDark == true
              //     ? Icons.light_mode_outlined
              //     : Icons.dark_mode_outlined),
            ),
          ),
        ],
      ),
      body: Obx(
        () => SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Internationalizations - translations
              Text(
                'Internationalization',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              DropdownButtonFormField<String?>(
                isExpanded: true,
                value: _utilityController.currentTranslation.value,
                onChanged: (value) {
                  _utilityController.setTranslation(value: value!);
                },
                selectedItemBuilder: (context) => List.from(
                  translations.map((e) => Text(e['title']!)),
                ),
                items: List.from(
                  translations.map(
                    (e) => DropdownMenuItem<String>(
                      onTap: () {
                        // _utilityController.setTranslation(value: e['value']!);
                      },
                      value: e['value'],
                      child: Text(e['title']!),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Hello'.tr,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
              const SizedBox(height: 12),
              Text(
                'greetings'.trParams({"name": "John", "sister_name": "Alice"})!,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),

              const SizedBox(height: 18),

              // dark & light theme
              //TODO : dark/light theme implementation

              // get connect
              //TODO : get connect implementation

              //other advance utilites
              //TODO : other useful utilities implementation
            ],
          ),
        ),
      ),
    );
  }
}
