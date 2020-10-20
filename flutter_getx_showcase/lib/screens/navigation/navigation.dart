import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/apppages.dart';
import 'package:get/get.dart';
import 'navone.dart';

class Navigation extends StatelessWidget {
  var data;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: FlatButton(
            color: Colors.blue,
            onPressed: () {
              Get.to(Navone());
            },
            child: Text('GetX Navigation'),
          ),
        ),
        Center(
          child: FlatButton(
            color: Colors.orange,
            onPressed: () {
              Get.toNamed(Routes.NAVTWO);
            },
            child: Text('GetX Named Navigation'),
          ),
        ),
        Center(
          child: FlatButton(
            color: Colors.greenAccent,
            onPressed: () {
              Get.toNamed(Routes.NAVTHREE);
            },
            child: Text('GetX Nested Navigation'),
          ),
        ),
        Center(
          child: FlatButton(
            color: Colors.purpleAccent,
            onPressed: () {
              Get.toNamed(Routes.NAVFOUR, arguments: 'Get is the best');
            },
            child: Text('GetX Send Data'),
          ),
        ),
        Center(
          child: FlatButton(
            color: Colors.blueGrey,
            onPressed: () async {
              data = await Get.toNamed(Routes.NAVFIVE);
              //NOTE: for more uses i should trigger a state change
              //and process it accordingly
              print(data);
            },
            child: Text('GetX Receive Data'),
          ),
        ),
      ],
    );
  }
}
