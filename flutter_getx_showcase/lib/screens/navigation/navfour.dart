import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navfour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return true;
      },
      child: Container(
        color: Colors.green[100],
        child: Center(
          child: Text(
            Get.arguments,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ),
    );
  }
}
