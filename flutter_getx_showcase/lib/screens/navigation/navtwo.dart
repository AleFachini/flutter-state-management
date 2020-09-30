import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navtwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop();
        return true;
      },
      child: Container(
        color: Colors.red[500],
      ),
    );
  }
}
