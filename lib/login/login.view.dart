import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tela_de_login/login/widgets/emailField.widget.dart';
import 'package:tela_de_login/login/widgets/loginButton.widget.dart';
import 'package:tela_de_login/login/loginView.controller.dart';
import 'package:tela_de_login/login/widgets/passwordField.widget.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Login')),
      ),
      body: _body(),
    );
  }

  _body() {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(12),
      children: [
        SizedBox(
          height: Get.height / 3,
        ),
        EmailField(),
        SizedBox(height: 27),
        PasswordField(),
        SizedBox(height: 27),
        Divider(),
        SizedBox(height: 27),
        LoginButton(),
      ],
    );
  }
}
