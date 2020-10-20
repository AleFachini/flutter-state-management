import 'package:flutter_getx_showcase/screens/bindingetx/bindingsone.dart';
import 'package:flutter_getx_showcase/screens/bindingetx/mybinding.dart';
import 'package:flutter_getx_showcase/screens/navigation/navfive.dart';
import 'package:flutter_getx_showcase/screens/navigation/navfour.dart';
import 'package:flutter_getx_showcase/screens/navigation/navigation.dart';
import 'package:flutter_getx_showcase/screens/navigation/navthree.dart';
import 'package:flutter_getx_showcase/screens/navigation/navtwo.dart';
import 'package:flutter_getx_showcase/screens/popups/popups.dart';
import 'package:flutter_getx_showcase/screens/statecontroller/statenavone.dart';
import 'package:flutter_getx_showcase/screens/workers/workersone.dart';
import 'package:get/get.dart';

import 'controllers/controllerforworkers.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const NAVIGATION = '/navigation';
  static const NAVTWO = '/navigation/navtwo';
  static const NAVTHREE = '/navigation/navthree';
  static const NAVFOUR = '/navigation/navfour';
  static const NAVFIVE = '/navigation/navfive';
  static const STATE = '/state';
  static const STATENAVONE = '/state/statenavone';
  static const BINDINGS = '/bindings';
  static const BINDINGSONE = '/bindings/bindingsone';
  static const POPUPS = '/popups';
  static const WORKERS = '/workers';
  static const WORKERSONE = '/workers/workersone';
}

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.NAVIGATION,
      page: () => Navigation(),
    ),
    GetPage(
      name: Routes.NAVTWO,
      page: () => Navtwo(),
    ),
    GetPage(
      name: Routes.NAVTHREE,
      page: () => Navthree(),
    ),
    GetPage(
      name: Routes.NAVFOUR,
      page: () => Navfour(),
    ),
    GetPage(
      name: Routes.NAVFIVE,
      page: () => Navfive(),
    ),
    GetPage(
      name: Routes.POPUPS,
      page: () => Popups(),
    ),
    GetPage(
      name: Routes.STATENAVONE,
      page: () => Statenavone(),
    ),
    GetPage(
      name: Routes.BINDINGSONE,
      page: () => Bindingsone(),
      binding: Mybinding(),
    ),
    GetPage(
      name: Routes.WORKERSONE,
      page: () => Workersone(),
      binding: BindingsBuilder(() => {
            //Get.lazyPut<Controllerforworkers>(() => Controllerforworkers()),
            Get.put(Controllerforworkers()),
          }),
    ),
  ];
}
//to go to route
//Get.toNamed(Routes.ADDPLACE);
