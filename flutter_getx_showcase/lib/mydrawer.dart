import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/controllers/homecontroller.dart';
import 'package:flutter_getx_showcase/screens/navigation.dart';
import 'package:get/route_manager.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 100.0,
            child: DrawerHeader(
              child: Text('GetX Features'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.pop(
                  context); //this order wroks, putting Navigator after get won't work
              Get.find<HomeController>().goToState(DrawerStatus.home);
            },
          ),
          Divider(
            color: Colors.blueGrey[200],
          ),
          ListTile(
            title: Text('Navigation'),
            onTap: () {
              // Update the state of the app.
              Navigator.pop(context);
              Get.find<HomeController>().goToState(DrawerStatus.navigation);
            },
          ),
          Divider(
            color: Colors.blueGrey[200],
          ),
          ListTile(
            title: Text('State Controller'),
            onTap: () {
              Navigator.pop(context);
              Get.find<HomeController>()
                  .goToState(DrawerStatus.statecontroller);
            },
          ),
          Divider(
            color: Colors.blueGrey[200],
          ),
          ListTile(
            title: Text('Bindings'),
            onTap: () {
              Navigator.pop(context);
              Get.find<HomeController>().goToState(DrawerStatus.bindings);
            },
          ),
          Divider(
            color: Colors.blueGrey[200],
          ),
          ListTile(
            title: Text('PopUps'),
            onTap: () {
              Navigator.pop(context);
              Get.find<HomeController>().goToState(DrawerStatus.popups);
            },
          ),
          Divider(
            color: Colors.blueGrey[200],
          ),
          ListTile(
            title: Text('Workers'),
            onTap: () {
              Navigator.pop(context);
              Get.find<HomeController>().goToState(DrawerStatus.workers);
            },
          ),
          Divider(
            color: Colors.blueGrey[200],
          ),
          ListTile(
            title: Text('Validation'),
            onTap: () {
              Navigator.pop(context);
              Get.find<HomeController>().goToState(DrawerStatus.validation);
            },
          ),
          Divider(
            color: Colors.blueGrey[200],
          ),
          ListTile(
            title: Text('Storage'),
            onTap: () {
              Navigator.pop(context);
              Get.find<HomeController>().goToState(DrawerStatus.storage);
            },
          ),
          Divider(
            color: Colors.blueGrey[200],
          ),
        ],
      ), // Populate the Drawer in the next step.
    );
  }
}
