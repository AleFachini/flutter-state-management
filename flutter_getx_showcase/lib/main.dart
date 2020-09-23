import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/mydrawer.dart';
import 'package:flutter_getx_showcase/screens/bindings.dart';
import 'package:flutter_getx_showcase/screens/home.dart';
import 'package:flutter_getx_showcase/screens/navigation.dart';
import 'package:flutter_getx_showcase/screens/popups.dart';
import 'package:flutter_getx_showcase/screens/statecontroller.dart';
import 'package:flutter_getx_showcase/screens/storage.dart';
import 'package:flutter_getx_showcase/screens/validation.dart';
import 'package:flutter_getx_showcase/screens/workers.dart';
import 'package:get/get.dart';

import 'controllers/homecontroller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //create instance of HomeController for drawer
  final HomeController drawerController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX State Management'),
        ),
        drawer: MyDrawer(),
        //body: Home(),
        body: GetX<HomeController>(
          init: HomeController(),
          builder: (drawerController) {
            print('${drawerController.state.value}');
            if (drawerController.state.value == DrawerStatus.navigation)
              return Navigation();
            if (drawerController.state.value == DrawerStatus.popups)
              return Popups();
            if (drawerController.state.value == DrawerStatus.statecontroller)
              return Statecontroller();
            if (drawerController.state.value == DrawerStatus.bindings)
              return Bindingsroute();
            if (drawerController.state.value == DrawerStatus.storage)
              return Storage();
            if (drawerController.state.value == DrawerStatus.validation)
              return Validation();
            if (drawerController.state.value == DrawerStatus.workers)
              return Workers();
            return Home();
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            drawerController.goToState(DrawerStatus.home),
          },
          tooltip: 'Increment',
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
