import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'HOME',
            style: Theme.of(context).textTheme.headline4,
          ),
          FlatButton(
            color: Theme.of(context).accentColor,
            onPressed: () {
              if (Get.isDarkMode == true)
                Get.changeTheme(ThemeData.light());
              else {
                Get.changeTheme(ThemeData.dark());
              }
            },
            child: Text(
              'Toggle Theme',
              style: Theme.of(context).accentTextTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}
