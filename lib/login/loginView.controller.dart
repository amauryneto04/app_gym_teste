import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tela_de_login/home/home.view.dart';

class LoginController extends GetxController {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  static const email = 'admin@admin.com';
  static const password = 'admin';

  void tryTologin() {
    // Veridica o email
    if (emailInput.text.isEmpty) {
      print('Insira um email');
      return;
    }

    if (emailInput.text != email) {
      print('Email não encontrado');
      return;
    }

    // Verifica a senha
    if (passwordInput.text.isEmpty) {
      print('Insira uma senha');
      return;
    }

    if (passwordInput.text != password) {
      print('Senha Incorreta');
      return;
    }

    // Se o email e a senha estiverem corretos, realiza o login
    Get.to(() => HomeView());

    void login() {
      Get.to(() => HomeView()); // Navega para a HomeView
    }

    void printError(String error) {
      print(error); //imprime a mensagem de erro
    }
  }
}
