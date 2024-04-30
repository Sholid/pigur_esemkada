import 'package:flutter/material.dart';
import 'package:flutter_app_prjct/pages/admin/home_admin.dart';
import 'package:flutter_app_prjct/pages/login/login_page.dart';
import 'package:flutter_app_prjct/pages/user/home_user_screen.dart';
import 'package:get_storage/get_storage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});
  static const route = "/";
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final box = GetStorage();

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () {
        if (box.read('isLogin') ?? false == true) {
          if (box.read('isAdmin') ?? false == true) {
            Navigator.pushReplacementNamed(context, Admin.route);
          } else {
            Navigator.pushReplacementNamed(context, HomeUserScreen.route);
          }
        } else {
          Navigator.pushReplacementNamed(context, LoginPage.route);
        }
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: Image.asset(
        "assets/img/screen_siswa.png",
        height: 700,
        width: 600,
      ),
    );
  }
}
