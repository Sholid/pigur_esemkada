import 'package:flutter/material.dart';
import 'package:flutter_app_prjct/pages/login/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static const route = "/";
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacementNamed(context, LoginPage.route),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/img/boe.png",
          height: 150,
        ),
      ),
    );
  }
}
