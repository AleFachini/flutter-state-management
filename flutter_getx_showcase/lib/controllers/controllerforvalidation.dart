import 'package:get/get.dart';

class Controllerforvalidation extends GetxController {
  final email = ''.obs;
  final pass = ''.obs;
  final enableSend = false.obs;

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
    //checkfor uppercase
    bool checkUppercase = _hasUppercase(passvalue);
    print('checkUppercase: ${checkUppercase}');
  }

  bool _hasUppercase(String string) {
    bool hasUppercase = false;
    var iterablefromString = string.split('');
    for (var char in iterablefromString) {
      if (char == char.toUpperCase()) {
        hasUppercase = true;
      } else {
        hasUppercase = false;
      }
    }
    print('hasUppercase: ${hasUppercase}');
    return hasUppercase;
  }

  Worker _worker;

  @override
  onInit() {
    //_worker = ever(email, (_) => print("$_ has been changed (ever)"));

    /// Anti DDos - Called every time the user stops typing for 1 second, for example.
    debounce(email, (_) => validateemail(email.value),
        time: Duration(milliseconds: 750));
  }

  disposeWorker() {
    _worker.dispose();
    // or _ever();
  }
}
