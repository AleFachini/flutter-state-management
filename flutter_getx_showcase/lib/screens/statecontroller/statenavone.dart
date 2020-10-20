import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/controllers/controllerforgetx.dart';
import 'package:get/get.dart';

class Statenavone extends StatelessWidget {
  final Controllerforgetx cfobx = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Center(
          child: Text(
        '${cfobx.datatext.value}',
        style: Theme.of(context).textTheme.headline4,
      )),
    );
  }
}
