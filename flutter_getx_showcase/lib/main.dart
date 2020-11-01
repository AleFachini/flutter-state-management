import 'package:flutter/material.dart';
import 'package:flutter_getx_showcase/apppages.dart';
import 'package:flutter_getx_showcase/mydrawer.dart';
import 'package:flutter_getx_showcase/screens/bindingetx/bindings.dart';
import 'package:flutter_getx_showcase/screens/home.dart';
import 'package:flutter_getx_showcase/screens/navigation/navtwo.dart';
import 'package:flutter_getx_showcase/screens/navigation/navigation.dart';
import 'package:flutter_getx_showcase/screens/popups/popups.dart';
import 'package:flutter_getx_showcase/screens/statecontroller/statecontroller.dart';
import 'package:flutter_getx_showcase/screens/storagegetx/storage.dart';
import 'package:flutter_getx_showcase/screens/validationgetx/validation.dart';
import 'package:flutter_getx_showcase/screens/workers/workers.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'controllers/homecontroller.dart';

void main() async {
  await GetStorage.init();
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
      initialRoute: '/',
      getPages: AppPages.pages,
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
          tooltip: 'Back to HOME',
          child: Icon(Icons.arrow_back),
        ),
      ),
    );
  }
}
