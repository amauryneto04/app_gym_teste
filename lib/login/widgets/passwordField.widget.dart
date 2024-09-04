import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tela_de_login/login/loginView.controller.dart';

class PasswordField extends GetView<LoginController> {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.passwordInput,
      decoration: const InputDecoration(hintText: 'Senha'),
    );
  }
}
