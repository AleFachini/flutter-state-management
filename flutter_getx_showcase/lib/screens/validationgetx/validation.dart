import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/controllers/controllerforvalidation.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class Validation extends StatelessWidget {
  final Controllerforvalidation controller = Get.put(Controllerforvalidation());
  //final isEnable = false;
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
          Obx(() {
            final isEnable = controller.enableSend.value;
            return FlatButton(
              color: Colors.blue,
              onPressed: () => isEnable ? print('valido') : print('invalido'),
              child: Text('VALIDATE EMAIL'),
            );
          }),
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
                controller.pass.value = value;
              },
            ),
          ),
          /*Obx(
            () {
              bool passvalid = controller.passwordSnackbar.value;
              return FlatButton(
                color: Colors.yellow,
                onPressed: () {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                  if (passvalid == false) {
                    Get.snackbar(
                      "Weak Password!", // title
                      "Require at least: one Uppercase, one Lowercase, one number and minimum 8 characters.", // message
                      backgroundColor: Colors.white,
                      snackPosition: SnackPosition.BOTTOM,
                      icon: Icon(Icons.alarm),
                      shouldIconPulse: true,
                      barBlur: 20,
                      isDismissible: true,
                      duration: Duration(seconds: 4),
                    );
                  } else {
                    Get.snackbar(
                      "Strong Password!", // title
                      "GetX validates your password!", // message
                      backgroundColor: Colors.white,
                      snackPosition: SnackPosition.BOTTOM,
                      icon: Icon(Icons.alarm),
                      shouldIconPulse: true,
                      barBlur: 20,
                      isDismissible: true,
                      duration: Duration(seconds: 2),
                    );
                  }
                },
                child: Text('VALIDATE PASS'),
              );
            },
          ),*/
        ],
      ),
    );
  }
}
