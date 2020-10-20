import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/screens/popups/mydialog.dart';
import 'package:get/get.dart';

class Popups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: FlatButton(
              color: Colors.yellow,
              onPressed: () {
                Get.snackbar(
                  "Hey i'm a Get SnackBar!", // title
                  "It's unbelievable! I'm using SnackBar without context, without boilerplate, without Scaffold, it is something truly amazing!", // message
                  backgroundColor: Colors.white,
                  snackPosition: SnackPosition.BOTTOM,
                  icon: Icon(Icons.alarm),
                  shouldIconPulse: true,
                  barBlur: 20,
                  isDismissible: true,
                  duration: Duration(seconds: 3),
                );
              },
              child: Text('GetX Snackbar'),
            ),
          ),
          Center(
            child: FlatButton(
              color: Colors.pink[50],
              onPressed: () {
                Get.dialog(Mydialog());
              },
              child: Text('GetX Dialog'),
            ),
          ),
          Center(
            child: FlatButton(
              color: Colors.lightGreen,
              onPressed: () {
                Get.bottomSheet(Container(
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                          leading: Icon(Icons.music_note),
                          title: Text('Music'),
                          onTap: () => {}),
                      ListTile(
                        leading: Icon(Icons.videocam),
                        title: Text('Video'),
                        onTap: () => {},
                      ),
                    ],
                  ),
                ));
              },
              child: Text('GetX Bottom Sheet'),
            ),
          ),
        ],
      ),
    );
  }
}
