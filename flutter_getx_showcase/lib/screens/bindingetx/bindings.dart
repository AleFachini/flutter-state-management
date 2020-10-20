import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../apppages.dart';

class Bindingsroute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: FlatButton(
            color: Colors.white,
            onPressed: () {
              //This named route already initiates the binding
              Get.toNamed(Routes.BINDINGSONE);
            },
            child: Text('To Bindings Demo')),
      ),
    );
  }
}
