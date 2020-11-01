import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/controllers/controllerstorage.dart';
import 'package:get/get.dart';

class Storage extends StatelessWidget {
  //get.put controller for storage
  final ControllerforStorage controller = Get.put(ControllerforStorage());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[200],
      child: Column(
        //obx va en este nivel
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              obscureText: false, //set true to hide text
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: controller.email.value,
              ),
              onChanged: (value) {
                print(value);
                //no need to do anything here for the moment
                controller.email.value = value;
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Checkbox(
                  value: controller.recordEmail.value,
                  onChanged: (val) {
                    //print('onchanged checkbox');
                    //update for both variables to be saved
                    controller.recordEmail.value = val;
                    controller.recordPreferences(val, controller.email.value);
                  },
                ),
              ),
              Text('Save in this device'),
            ],
          ),
        ],
      ),
    );
  }
}
