import 'package:get/get.dart';
import 'package:tela_de_login/login/loginView.controller.dart';

class LoginBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}
