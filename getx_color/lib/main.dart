import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(GetMaterialApp(home: Home()));

class Controller extends GetxController {
  var count = 0.obs;
  var newColor = Colors.blue.obs;
  void statechange() {
    count++; //count.value = count.value + 1;
    newColor.value = new MaterialColor(Random().nextInt(0xFFFFFFFF), null);
  }
}

class Home extends StatelessWidget {
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<Controller>(
              builder: (_) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'clicks: ${controller.count}',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    color: controller.newColor.value,
                  ),
                ],
              ),
            ),
            RaisedButton(
              child: Text('Next Route'),
              onPressed: () {
                Get.to(Second());
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => controller.statechange(),
      ),
    );
  }
}

class Second extends StatelessWidget {
  final Controller ctrl = Get.find();
  @override
  Widget build(context) {
    return Scaffold(
        body: Center(
            child: Text(
      "${ctrl.count}",
      style: TextStyle(
        color: ctrl.newColor.value,
        fontSize: 25,
      ),
    )));
  }
}
