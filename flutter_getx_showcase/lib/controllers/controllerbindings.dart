import 'package:get/get.dart';

class Controllerbindings extends GetxController {
  var count = 1;

  Controllerbindings();

  void increment() {
    count++;
    update();
  }
}
