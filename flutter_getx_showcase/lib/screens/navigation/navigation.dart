import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'navone.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(1), // create a key by index
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/') {
          return GetPageRoute(
            page: () => Container(
              child: Center(
                child: FlatButton(
                  color: Colors.blue,
                  onPressed: () {
                    Get.toNamed('/navone',
                        id: 1); // navigate by your nested route by index
                  },
                  child: Text("Go to One"),
                ),
              ),
            ),
          );
        } else if (settings.name == '/navone') {
          return GetPageRoute(
            page: () => Navone(),
          );
        } else //this is here for avoiding warning de return type of
          return GetPageRoute(
            page: () => Navigation(),
          );
      },
    );
  }
}
