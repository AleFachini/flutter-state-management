import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/controllers/controllerforvalidation.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class Validation extends StatelessWidget {
  final Controllerforvalidation controller = Get.put(Controllerforvalidation());
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurpleAccent[100],
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
                labelText: 'email',
              ),
              onChanged: (value) {
                print(value);
                //we directly modify the .obs variable
                //we will validate inside the debounce worker
                controller.email.value = value;
              },
            ),
          ),
          Obx(
            () => FlatButton(
              color: Colors.blue,
              onPressed: () {
                controller.enableSend.value == true
                    ? print('validmail')
                    : print('invalidmail');
              },
              child: Text('VALIDATE EMAIL'),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: TextField(
              obscureText: true, //set true to hide text
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'password',
              ),
              onChanged: (value) {
                print(value);
                //we directly modify the .obs variable
                //we will validate inside the debounce worker
              },
            ),
          ),
        ],
      ),
    );
  }
}
