import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navfive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return true;
      },
      child: Container(
        color: Colors.purple[100],
        child: Center(
          child: FlatButton(
            color: Colors.blueGrey,
            onPressed: () {
              Get.back(result: 'From Previous Route');
            },
            child: Text('Send Data Back'),
          ),
        ),
      ),
    );
  }
}
