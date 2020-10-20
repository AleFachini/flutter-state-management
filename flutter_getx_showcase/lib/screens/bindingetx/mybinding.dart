import 'package:flutter_getx_showcase/controllers/controllerbindings.dart';
import 'package:get/get.dart';

class Mybinding extends Bindings {
  @override
  void dependencies() {
    // TODONE: implement dependencies
    print('Controllerbindings Initiated');
    Get.lazyPut<Controllerbindings>(() => Controllerbindings());
  }
}
