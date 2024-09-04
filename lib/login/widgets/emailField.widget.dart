import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tela_de_login/login/loginView.controller.dart';

class EmailField extends GetView<LoginController> {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.emailInput,
      decoration: InputDecoration(hintText: 'Email'),
    );
  }
}
