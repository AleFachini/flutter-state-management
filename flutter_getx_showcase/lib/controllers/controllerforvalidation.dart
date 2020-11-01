import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controllerforvalidation extends GetxController {
  final email = ''.obs;
  final pass = ''.obs;
  final enableSend = false.obs;
  final passwordSnackbar = true.obs;

  void validateemail(String emailvalue) {
    print("debounce triggered");
    this.enableSend.value = GetUtils.isEmail(emailvalue);
    print('enableSend: ${enableSend.value}');
    return;
  }

  void validatepass(String passvalue) {
    //isnumericOnly
    //isAlphabetOnly
    //<isLengthGreaterOrEqual
    //check for uppercase
    bool validPassword = GetUtils.isLengthGreaterOrEqual(passvalue, 8) &
        (!GetUtils.isNumericOnly(passvalue)) &
        !GetUtils.isAlphabetOnly(passvalue) &
        (GetUtils.hasCapitalletter(passvalue));
    print('validpassword: ${validPassword}');
    passwordSnackbar.value = validPassword;
    if (validPassword == false) {
      Get.snackbar(
        "Weak Password!", // title
        "Requires at least: one Uppercase, one Lowercase, one number and minimum 8 characters.", // message
        backgroundColor: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
        icon: Icon(Icons.alarm),
        shouldIconPulse: true,
        barBlur: 20,
        isDismissible: true,
        duration: Duration(seconds: 4),
      );
    }
    return;
  }

  Worker _worker;

  @override
  onInit() {
    //_worker = ever(email, (_) => print("$_ has been changed (ever)"));

    /// Anti DDos - Called every time the user stops typing for 1 second, for example.
    debounce(email, (_) => validateemail(email.value),
        time: Duration(milliseconds: 750));

    /// Anti DDos - Called every time the user stops typing for 1 second, for example.
    debounce(pass, (_) => validatepass(pass.value),
        time: Duration(milliseconds: 1000));
  }

  disposeWorker() {
    _worker.dispose();
    // or _ever();
  }
}
