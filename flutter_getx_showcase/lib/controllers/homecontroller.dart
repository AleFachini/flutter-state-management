import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

//We should create an enum with one state per each page that drawer present as an option
enum DrawerStatus {
  home,
  navigation,
  popups,
  statecontroller,
  bindings,
  storage,
  validation,
  workers
}

class HomeController extends GetxController {
  final state = DrawerStatus.home.obs;
  HomeController();
  void goToState(DrawerStatus state) {
    this.state.value = state;
  }
}
