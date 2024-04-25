import "package:flutter/material.dart";
// part of'page.dart';

class LoginController {
  //fomrkey mengelola formulir
  final formKey = GlobalKey<FormState>();
  // final emailController = TextEditingController();
  // final passwordController = TextEditingController();

  void login(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Error'),
          content: Text("Email or Password salah!"),
        ),
      );
    }
  }
}
