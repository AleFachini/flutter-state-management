import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ControllerforStorage extends GetxController {
  final recordEmail = false.obs;
  final email = 'email'.obs;
  final box = GetStorage();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    //here i can set my checkbox saved status and my email status
    box.writeIfNull('email', 'email');
    box.writeIfNull('recordemail', false);
    email.value = box.read('email');
    print('email: ${email.value}');
    recordEmail.value = box.read('recordemail');
    print('recordEmail: ${recordEmail.value}');
  }

  void recordPreferences(bool status, String email) {
    if (recordEmail.value) {
      // We will insert a value into the storage if it does not already have one, otherwise it will ignore it.
      box.write('email', '${email}');
      print('Saving email: ${email}');
    } else {
      this.email.value = 'email';
      box.write('email', 'email');
    }
    box.write('recordemail', status);
    return;
  }
}
