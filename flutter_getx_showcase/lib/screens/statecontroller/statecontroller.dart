import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/controllers/controllerforgetx.dart';
import 'package:get/get.dart';

import '../../apppages.dart';

class Statecontroller extends StatelessWidget {
  // Instantiate your class using Get.put() to make it available for all "child" routes there.
  final Controllerforgetx controller = Get.put(Controllerforgetx());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              obscureText: false, //set true to hide text
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Any String',
              ),
              onChanged: (value) {
                print(value);
                controller.datatext.value = value;
                controller.textforbuilder.value = value;
                controller.textUpdate();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Obx(
              //Obx just do ephemeral state management you always change
              // the widget each time you change the .obs variable
              () => Text('Data with Obx: ${controller.datatext.value}'),
            ),
          ),
          Center(
            child: FlatButton(
              color: Colors.blue,
              onPressed: () {
                Get.toNamed(Routes.STATENAVONE);
              },
              child: Text('Send State'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetX<Controllerforgetx>(
              //GetX has a builder an a lot more properties that allow more
              //control over the state management
              builder: (controller) {
                return Text('Data with GetX: ${controller.datatext.value}');
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetBuilder<Controllerforgetx>(
              //GetX has a builder an a lot more properties that allow more
              //control over the state management, in this case we require call
              //update inside the update function in controller
              builder: (controller) {
                return Text(
                    'Data with GetBuilder: ${controller.textforbuilder.value}');
              },
            ),
          ),
        ],
      ),
    );
  }
}
