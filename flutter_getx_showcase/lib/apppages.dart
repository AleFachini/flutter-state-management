import 'package:flutter_getx_showcase/screens/navigation/navigation.dart';
import 'package:flutter_getx_showcase/screens/navigation/navthree.dart';
import 'package:flutter_getx_showcase/screens/navigation/navtwo.dart';
import 'package:get/get.dart';

abstract class Routes {
  static const INITIAL = '/';
  static const NAVIGATION = '/navigation';
  static const NAVTWO = '/navigation/navtwo';
  static const NAVTHREE = '/navigation/navthree';
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
  ];
}
//to go to route
//Get.toNamed(Routes.ADDPLACE);
