import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../apppages.dart';

class Workers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent,
      child: Center(
        child: FlatButton(
            color: Colors.white,
            onPressed: () {
              //This named route already initiates the binding
              Get.toNamed(Routes.WORKERSONE);
            },
            child: Text('To Workers Demo')),
      ),
    );
  }
}
