import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/apppages.dart';
import 'package:get/get.dart';
import 'navone.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: FlatButton(
            color: Colors.blue,
            onPressed: () {
              Get.to(Navone()); // navigate by your nested route by index
            },
            child: Text('GetX Navigation'),
          ),
        ),
        Center(
          child: FlatButton(
            color: Colors.orange,
            onPressed: () {
              Get.toNamed(
                  Routes.NAVTWO); // navigate by your nested route by index
            },
            child: Text('GetX Named Navigation'),
          ),
        ),
        Center(
          child: FlatButton(
            color: Colors.greenAccent,
            onPressed: () {
              Get.toNamed(
                  Routes.NAVTHREE); // navigate by your nested route by index
            },
            child: Text('GetX Nested Navigation'),
          ),
        ),
      ],
    );
  }
}
