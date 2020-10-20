import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/controllers/controllerforworkers.dart';
import 'package:get/state_manager.dart';

class Workersone extends GetView<Controllerforworkers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[200],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text(
              '${controller.count1.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          FlatButton(
              color: Colors.white,
              onPressed: () {
                //This named route already initiates the binding
                controller.increment();
              },
              child: Text('Counter 1++')),
        ],
      ),
    );
  }
}
